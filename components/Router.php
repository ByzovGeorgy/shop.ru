<?php

class Router
{
    private $uri;
    private $routes = array();

    public function __construct()
    {
        $this->routes = Routes::getRoutes();
        $this->uri = $this->getRequestURI();
    }

    public function Run()
    {
        foreach ($this->routes as $uriPattern => $path) {
            if (preg_match("~$uriPattern~", $this->uri)) {
                $internalPath = preg_replace("~$uriPattern~", $path, $this->uri);
                $paths = explode('/', $internalPath);
                $controllerName = ucfirst(array_shift($paths)) . 'Controller';
                $action = 'action' . ucfirst(array_shift($paths));
                $controllerPath = $controllerName . '.php';
                if (file_exists($controllerPath)) {
                    include_once $controllerPath;
                }
                $controller = new $controllerName;
                $isFinished = call_user_func_array(array($controller, $action), $paths);

                if ($isFinished) {
                    break;
                }
            }
        }
    }

    private function getRequestURI()
    {
        $uri = $_SERVER['REQUEST_URI'];
        if (substr($uri, -1) != '/') {
            $uri .= '/';
        }
        if ($_SERVER['SERVER_NAME'] == 'localhost') {
            return substr($uri, strpos($uri, '/', 1));
        }
        return $uri;
    }
}

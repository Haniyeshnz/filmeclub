import { defineConfig } from "vite";
import laravel from "laravel-vite-plugin";

export default defineConfig({
    plugins: [
        laravel({
            input: [
                "resources/css/app.css",
                "responsive.css",
                "style.css",
                "resources/js/app.js",
                "resources/js/bootstrap.js",
                "resources/js/bootstrap.min.js",
                "resources/js/custom.js",
                "resources/js/grid-blog.min.js",
                "resources/js/imagesloaded.pkgd.min.js",
                "resources/js/jquery.sticky-kit.min.js",
                "resources/js/smooth-scroll.min.js",
                "bootstrap.min.css",
                "resources/js/app.js"
            ],
            refresh: true,
        }),
    ],
});

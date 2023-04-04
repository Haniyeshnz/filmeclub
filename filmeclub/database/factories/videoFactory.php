<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\category;
use App\Models\user;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\video>
 */
class videoFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'name'=>'فیلم خنده دار'.rand(1,200),
            'url'=>'https://download.blender.org/peach/bigbuckbunny_movies/BigBuckBunny_320x180.mp4',
            'length'=>fake()->randomNumber(3),
            'slug'=>'fun'.rand(1,1000),
            'description'=>' فیلم کمدی',
            'thumbnail'=>'https://didifilm.com/wp-content/uploads/2023/01/%D8%AF%D8%A7%D9%86%D9%84%D9%88%D8%AF-%D9%81%DB%8C%D9%84%D9%85-%D8%B3%DB%8C%D9%86%D9%85%D8%A7%DB%8C%DB%8C-%D8%A7%D9%86%D9%81%D8%B1%D8%A7%D8%AF%DB%8C-1401.jpg',
            'category_id'=>2,
            'user_id'=>user::first(),
        ];
    }
}

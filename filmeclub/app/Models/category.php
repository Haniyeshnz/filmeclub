<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class category extends Model
{
    use HasFactory;
    public function videos(): HasMany
    {
        return $this->hasMany(video::class);
    }
    public function getRandomVideos(int $count=6){
        return $this->videos()->inrandomOrder()->get()->take($count);
    }
}

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
// use Hekmatinasser\Verta\Verta;

class video extends Model
{
    use HasFactory;

    public function getRouteKeyName()
    {
        return 'slug';
    }

    public function getLengthAttribute($value)
    {
        return gmdate("i:s", $value);
    }

    protected $fillable = [
        'name', 'url', 'thumbnail', 'slug', 'length', 'description', 'category_id',
    ];

    public function relatedVideos(int $count =6)
    {
        return $this->category->getrandomVideos($count);
    }

    public function category(): BelongsTo
    {
        return $this->belongsTo(category::class);
    }

    public function getCategoryNameAttribute(): string
    {
        return $this->category?->name;
    }
    public function user(): BelongsTo
    {
        return $this->belongsTo(user::class);
    }
    public function getOwnerNameAttribute()
    {
        return $this->user?->name;
    }
    public function getOwnerAvatarAttribute()
    {
        return $this->user?->gravatar;
    }

}

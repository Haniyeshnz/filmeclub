<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\support\Str;
use Illuminate\Validation\Rule;

class updateVideoRequest extends storeVideosRequest
{
    public function rules(): array
    {
        return array_merge(parent::rules(), [
            'slug' => ['required',Rule::unique('videos')->ignore($this->video), 'alpha_dash'],
        ]);
    }
}

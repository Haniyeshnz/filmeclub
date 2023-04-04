<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\support\Str;
use Illuminate\Validation\Rules\Exists;

class storeVideosRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\Rule|array|string>
     */
    public function rules(): array
    {
        return [
            'name'=>['required'],
            'length'=>['required','integer'],
            'slug'=>['required','unique:videos,slug','alpha_dash'],
            'url'=>['required','url'],
            'thumbnail'=>['required','url'],
            'category_id' =>[ 'required','exists:categories,id']
        ];
    }
    protected function prepareForValidation(){
        $this->merge([
            'slug'=>str::slug($this->slug),
        ]);
    }
}

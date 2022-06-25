<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Pertanyaan>
 */
class PertanyaanFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        $tingkat = ['SD', 'SMP', 'SMA'];
        return [
            'title' => $this->faker->word(),
            'user_id' => mt_rand(1, 5),
            'body' => $this->faker->paragraph(mt_rand(3,10)),
            'tingkat' => $tingkat[mt_rand(0,2)],
        ];
    }
}

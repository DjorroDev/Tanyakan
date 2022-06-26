-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: phpmyadmin.test
-- Generation Time: Jun 26, 2022 at 07:25 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tanyakan`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jawabans`
--

CREATE TABLE `jawabans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `pertanyaan_id` bigint(20) UNSIGNED NOT NULL,
  `jawaban` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jawabans`
--

INSERT INTO `jawabans` (`id`, `user_id`, `pertanyaan_id`, `jawaban`, `created_at`, `updated_at`) VALUES
(1, 3, 3, 'Consequatur consequatur sit et cum consequatur et a. Sed quia laborum vel molestias. Et exercitationem veniam amet laudantium. Placeat expedita voluptatibus officia ut explicabo. Quibusdam aut et asperiores id aut voluptas consequuntur. Sapiente et possimus est voluptas expedita et id eos. Ea unde et distinctio dignissimos voluptatem. Aut veritatis quis reiciendis fugit. Rerum sit aliquam totam.', '2022-06-25 15:55:13', '2022-06-25 15:55:13'),
(2, 2, 3, 'Iste quasi ut dolore atque consectetur ab quia. Quibusdam eum nulla nobis corporis rem nulla. Ab sunt quibusdam velit temporibus dicta perferendis aut. Quibusdam voluptatem sunt qui illo facilis nesciunt aut.', '2022-06-25 15:55:13', '2022-06-25 15:55:13'),
(3, 5, 2, 'Eos dolor voluptas tempora. Voluptas sint velit consequuntur debitis dolores hic. Qui eos nihil et inventore. Consequuntur delectus sit vero distinctio quaerat placeat. Eaque quibusdam maxime est illo libero. Placeat corrupti facilis deserunt aliquam sequi provident nihil quae.', '2022-06-25 15:55:13', '2022-06-25 15:55:13'),
(4, 3, 5, 'Quia illum libero consequatur enim. Omnis blanditiis aut optio ut atque ratione incidunt et. Natus expedita culpa aliquid amet ea temporibus. Totam eum earum qui vero qui ab. Enim qui perferendis voluptatem repellat ex. Et ea eaque molestias voluptatem rerum optio ad consectetur. Praesentium dolore vero dolorum nisi dolorem eos.', '2022-06-25 15:55:13', '2022-06-25 15:55:13'),
(5, 5, 4, 'Enim pariatur incidunt aperiam quasi. Ipsam est ullam molestiae sint. Doloribus consequatur iure quia labore. Deserunt omnis aut quae qui quae dolorem ut. Quaerat qui consequatur totam sequi vel quidem animi eos. Temporibus laborum natus quasi nobis voluptas sint libero. Doloribus omnis est nihil exercitationem vel.', '2022-06-25 15:55:13', '2022-06-25 15:55:13'),
(6, 1, 3, 'betul', '2022-06-25 16:12:34', '2022-06-25 16:12:34'),
(7, 1, 1, 'ok', '2022-06-25 16:23:14', '2022-06-25 16:23:14'),
(8, 1, 5, 'Jadi begini.... Begitu', '2022-06-25 16:27:41', '2022-06-25 16:27:41'),
(9, 2, 1, 'Benar', '2022-06-25 16:28:44', '2022-06-25 16:28:44'),
(10, 4, 12, 'Herbivora adalah hewan pemakan tumbuhan. Contohnya sapi, kelinci.\nKarnivora adalah hewan pemakan daging. Contohnya Harimau, elang.', '2022-06-25 17:19:14', '2022-06-25 17:19:14'),
(11, 4, 13, 'Karena ikan punya insang untuk bernapas di dalam air', '2022-06-25 17:22:24', '2022-06-25 17:22:24');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_06_25_055019_create_pertanyaans_table', 1),
(6, '2022_06_25_201716_create_jawabans_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pertanyaans`
--

CREATE TABLE `pertanyaans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tingkat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pertanyaans`
--

INSERT INTO `pertanyaans` (`id`, `user_id`, `title`, `body`, `tingkat`, `created_at`, `updated_at`) VALUES
(1, 4, 'fugiat', 'Ducimus asperiores aut quam vel repellat quo maiores. Animi maxime autem nam voluptatem sit saepe. Ratione qui est veritatis et. Consectetur nobis nulla nostrum et numquam perferendis.', 'SD', '2022-06-25 15:55:13', '2022-06-25 15:55:13'),
(2, 2, 'ratione', 'Quia debitis corporis unde adipisci est laborum autem officiis. Rerum dolorem eius sed pariatur est blanditiis quae. Fugiat dicta non sit provident ea facere vel. Quas non magnam rerum dolores rerum facilis exercitationem ut. Amet cumque consequatur minima tempora exercitationem nemo dicta nobis.', 'SD', '2022-06-25 15:55:13', '2022-06-25 15:55:13'),
(3, 4, 'temporibus', 'Nihil iusto possimus repudiandae est exercitationem iusto. Quia aperiam consequuntur vero consequuntur est nemo. Quaerat ut repellat enim fugit eveniet. Occaecati qui cupiditate distinctio esse ipsam. Maxime reprehenderit nulla officia consequatur. Culpa non ut vitae debitis maxime. Est perspiciatis qui molestiae quia. At nam iure voluptatem et officiis inventore. Nihil culpa aut et minus omnis magni eligendi. Ab rem possimus quia. Eveniet sequi repellat delectus minima adipisci laudantium hic. Mollitia accusantium et reiciendis a sequi.', 'SD', '2022-06-25 15:55:13', '2022-06-25 15:55:13'),
(4, 2, 'quo', 'In dolor repellendus id voluptas unde. Magni quas accusantium nostrum ducimus molestiae. Quia ut autem at aut saepe quo veritatis quo. Cumque et similique est placeat itaque et qui. Distinctio et earum dolorem neque adipisci eveniet. Facere ex eos consectetur sit qui rem dolores. Aut iste reiciendis corrupti adipisci. Id at dicta dolor est fugit. Vitae nihil ad dolorem qui quibusdam tempore.', 'SMA', '2022-06-25 15:55:13', '2022-06-25 15:55:13'),
(5, 1, 'commodi', 'Deleniti quia qui corrupti similique. Explicabo et incidunt officiis libero ut cum. Qui dicta ipsa aut praesentium sit autem. Exercitationem delectus sit molestias accusantium nihil eos modi. Et voluptatibus distinctio nihil non minus enim quam eos. Asperiores voluptas nemo nesciunt rerum omnis et. Maxime adipisci minima corrupti et. Est voluptatem delectus nam repudiandae quia eum odio. Vel accusamus adipisci similique quis et. Itaque dolore natus fuga. Delectus dolor ratione sed alias quia.', 'SD', '2022-06-25 15:55:13', '2022-06-25 15:55:13'),
(6, 5, 'neque', 'Dolorum quas quae et et voluptas. Repellendus deserunt hic vel animi repellat voluptas quia perferendis. Error tenetur numquam saepe. Laboriosam voluptas incidunt modi. Et aut culpa ut. Et nemo repudiandae magnam. Odio soluta voluptatibus maxime ipsam porro eos.', 'SMA', '2022-06-25 15:55:13', '2022-06-25 15:55:13'),
(7, 2, 'voluptatum', 'Numquam sapiente aut rerum perferendis dicta odio velit dolorem. Distinctio esse error velit est. Voluptatem est molestias dolorem deleniti corporis. Sed quisquam dolorum doloremque officia. Impedit modi commodi molestiae. Iste quo impedit tempora qui ut. Qui neque facere quis non voluptatibus est. Cum sequi saepe unde iure ut dolores sed adipisci. Blanditiis dolorem dolores et consequatur eos. Qui enim temporibus excepturi culpa. Ex illo dolor rem nisi provident quas. Sit possimus aut autem vitae eius ad totam. Ducimus commodi quibusdam commodi nostrum rerum voluptatem sit et. Quia numquam non vel assumenda ab minima.', 'SD', '2022-06-25 15:55:13', '2022-06-25 15:55:13'),
(8, 3, 'dignissimos', 'Expedita placeat distinctio voluptate praesentium quibusdam corrupti. Molestiae consectetur est iusto iste iusto. Suscipit asperiores sit eveniet quia laudantium esse. Suscipit quam consequatur vel beatae natus quae eius. Fugiat iusto dolores ea. Et architecto reprehenderit nostrum vitae dolores. Sunt amet dolorem cum at ex. Atque tenetur vitae voluptatem velit sint fuga aut. A labore illo sunt enim blanditiis beatae.', 'SMA', '2022-06-25 15:55:13', '2022-06-25 15:55:13'),
(9, 3, 'aut', 'Libero molestiae et autem omnis autem modi necessitatibus. Voluptatem repellat qui sit distinctio. Quaerat omnis molestiae dolores at.', 'SD', '2022-06-25 15:55:13', '2022-06-25 15:55:13'),
(10, 4, 'et', 'Eum aliquid earum et. Temporibus sunt ullam repellendus ab quo. Officiis officia et et blanditiis iusto molestiae veniam. Eum harum fugiat eaque deserunt et. Excepturi esse provident repellendus pariatur. Ea fugiat recusandae sed id veritatis omnis nihil. Debitis non omnis sapiente.', 'SD', '2022-06-25 15:55:13', '2022-06-25 15:55:13'),
(11, 2, 'Materi PKN BPUPKI', 'Kapan BPUPKI dibentuk?', 'SMP', '2022-06-25 16:51:17', '2022-06-25 16:51:17'),
(12, 2, 'Biologi jenis hewan', 'Perbedaan Herbivora dan Karnivora', 'SMP', '2022-06-25 17:13:52', '2022-06-25 17:13:52'),
(13, 2, 'Biologi hewan ikan', 'Kenapa ikan bisa bernapas di dalam air?', 'SD', '2022-06-25 17:14:31', '2022-06-25 17:14:31'),
(14, 4, 'Matematika pytagoras', 'Apa itu Rumus pytagoras? berikan contohnya', 'SMP', '2022-06-25 17:16:11', '2022-06-25 17:16:11'),
(15, 4, 'Bahasa Indonesia', 'Cara menulis alamat yang benar', 'SD', '2022-06-25 17:17:09', '2022-06-25 17:17:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Alanis Tremblay II', 'lottie32@example.com', '2022-06-25 15:55:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2sUCgevWAE', '2022-06-25 15:55:13', '2022-06-25 15:55:13'),
(2, 'Katherine Turner', 'ines06@example.net', '2022-06-25 15:55:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jCXj5VIL6G', '2022-06-25 15:55:13', '2022-06-25 15:55:13'),
(3, 'Chase Nienow', 'marcellus.price@example.com', '2022-06-25 15:55:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'a2X4vA3ljL', '2022-06-25 15:55:13', '2022-06-25 15:55:13'),
(4, 'Jocelyn Veum', 'alexzander52@example.net', '2022-06-25 15:55:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'O8dHn7yoTx', '2022-06-25 15:55:13', '2022-06-25 15:55:13'),
(5, 'Marco Wolf', 'mueller.nickolas@example.com', '2022-06-25 15:55:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CFog1QgkZN', '2022-06-25 15:55:13', '2022-06-25 15:55:13'),
(6, 'Test User', 'test@example.com', '2022-06-25 15:55:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'I3F3Qok4wz', '2022-06-25 15:55:13', '2022-06-25 15:55:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jawabans`
--
ALTER TABLE `jawabans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `pertanyaans`
--
ALTER TABLE `pertanyaans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jawabans`
--
ALTER TABLE `jawabans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pertanyaans`
--
ALTER TABLE `pertanyaans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

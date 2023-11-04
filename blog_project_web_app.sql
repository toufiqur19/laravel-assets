-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2023 at 12:36 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog_project_web_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `ad_services`
--

CREATE TABLE `ad_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `short_desc` varchar(255) NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `published_at` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ad_services`
--

INSERT INTO `ad_services` (`id`, `image`, `title`, `short_desc`, `published`, `description`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 'LRTj5GZMtXxknIECiSFhlEupfEme5e-metaYmFubmVyLnBuZw==-.png', 'This is my frist Ad', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ', 1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2023-11-02', '2023-11-04 00:30:34', '2023-11-04 01:02:31');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Php', 'php', '2023-10-26 07:54:31', '2023-10-26 07:54:31'),
(2, 'Laravel', 'laravel', '2023-10-26 07:54:42', '2023-10-26 07:54:42'),
(3, ' Technology', ' technology', '2023-10-26 07:54:46', '2023-11-04 01:43:25');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `body`, `created_at`, `updated_at`) VALUES
(7, 'sobuj exan', 'sobuj@gmail.com', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '2023-11-01 09:32:11', '2023-11-01 09:32:11');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `fb_url` varchar(255) DEFAULT NULL,
  `tw_url` varchar(255) DEFAULT NULL,
  `in_url` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `name`, `designation`, `fb_url`, `tw_url`, `in_url`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Toufiqur Rahman', 'Founder', 'https://www.facebook.com/', 'https://www.twitter.com/', 'https://www.linkedin.com/', '6oY4gG7WTRwViy3oX4MJDBVEBm8dA0-metabXktcmVtb3ZlYmctcHJldmlldyAoMikucG5n-.png', 1, '2023-11-03 23:36:50', '2023-11-04 00:08:39');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_10_21_074439_create_services_table', 1),
(6, '2023_10_21_074900_create_categories_table', 1),
(7, '2023_10_21_074909_create_posts_table', 1),
(8, '2023_10_21_115135_create_members_table', 1),
(9, '2023_11_01_131119_create_contacts_table', 2),
(10, '2023_11_04_062118_create_ad_services_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `short_desc` varchar(255) NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `published_at` date NOT NULL,
  `tags` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`tags`)),
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `image`, `title`, `name`, `slug`, `short_desc`, `published`, `description`, `published_at`, `tags`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'INmpK2EAzeqUPn5hFWkOV6KdXPXbj0-metaY29tbXVuaWNhdGlvbi5qcGc=-.jpg', 'Graphics Design', 'sobuj', 'laravel', 'Lorem Ipsum is simply dummy', 1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2023-10-25', '[\"laravel\",\"php\"]', 2, '2023-10-26 07:56:08', '2023-10-26 07:56:34'),
(2, '09ILI53WlNchsFFFqwy6nUf6XqgB9y-metaU29jaWFsLW1lZGlhLWFkZGljdGVkLmpwZw==-.jpg', ' Negative effects of technology', 'ChatGPT', ' technology', 'Technology has had a profound impact on our lives, bringing about many positive changes, but it has also been associated with several negative effects.', 1, 'Technology has had a profound impact on our lives, bringing about many positive changes, but it has also been associated with several negative effects. It\'s important to note that these negative effects are not inherent to technology itself but often result from the way technology is used and integrated into society. Here are some of the negative effects of technology:\n\nSocial Isolation: The use of technology, particularly smartphones and social media, can lead to social isolation as people spend more time interacting with screens than with real-life friends and family. This can result in feelings of loneliness and disconnection.\n\nAddiction: Technology can be addictive, and many people, especially young individuals, find themselves unable to control their screen time. This addiction can interfere with daily life, work, and relationships.\n\nPrivacy Concerns: As technology advances, concerns about data privacy and surveillance have grown. With the collection and sharing of personal information online, individuals may be at risk of identity theft, cyberbullying, and invasions of privacy.\n\nMental Health Issues: Increased screen time has been linked to mental health problems such as anxiety, depression, and sleep disturbances. The constant connectivity and exposure to online content can be overwhelming and stressful.\n\nDisplacement of Jobs: Automation and artificial intelligence have the potential to displace many traditional jobs. While they may create new opportunities, the transition can be difficult for those who lose their jobs due to technological advancements.\n\nEnvironmental Impact: The production and disposal of electronic devices contribute to e-waste and environmental pollution. Additionally, the energy consumption of data centers and electronic devices has an environmental impact.\n\nCybersecurity Threats: Technology opens up vulnerabilities to cyberattacks. Hacking, malware, and other cyber threats can result in data breaches, financial losses, and even threats to national security.\n\nFake News and Misinformation: The ease of spreading information on the internet has led to the proliferation of fake news and misinformation. This can have serious consequences for public discourse and decision-making.\n\nDecreased Physical Activity: Sedentary behaviors, often associated with technology use, can lead to a decline in physical activity, contributing to health problems like obesity and cardiovascular disease.\n\nErosion of Critical Thinking Skills: With instant access to information, there is a risk that critical thinking skills may erode. People may become reliant on quick online searches rather than engaging in in-depth analysis and critical thinking.\n\nDependency on Technology: As technology becomes more integrated into daily life, there is a growing dependency on it for various tasks. This dependence can be problematic when technology fails or is not accessible.\n\nGenerational Gaps: Technology can exacerbate generational gaps, with older generations feeling left behind and disconnected from the digital world, while younger generations are more tech-savvy.\n\nIt\'s essential to strike a balance between the benefits and drawbacks of technology and to use it in a way that enhances our lives while being aware of its potential negative consequences. Society, policymakers, and individuals need to address these negative effects and work to mitigate them through responsible and thoughtful use of technology.', '2023-10-24', '[\"technology\"]', 3, '2023-10-26 08:00:42', '2023-11-04 01:44:07'),
(3, 'ojvTVyNikEG1ewP31AoGYfuD9q4H4y-metacGV4ZWxzLXBpeGFiYXktMjY4NTMzLmpwZw==-.jpg', 'Data science', 'sobuj', 'frist_post', 'Lorem Ipsum is simply dummy', 1, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequatur facere ipsum porro officiis natus inventore iusto. Recusandae ipsum cumque obcaecati impedit esse et inventore debitis animi voluptas cum soluta natus exercitationem, consequatur eaque ipsam atque quibusdam deserunt rem deleniti voluptate, voluptatum, nam fugiat incidunt repellendus? Laboriosam quos nisi illum voluptates, dolorum nam tempore voluptate nesciunt nostrum nobis eum quis at ea impedit illo voluptatem unde sequi cum assumenda magnam maxime vel earum quasi excepturi. Facilis quam quia minus corporis iure officiis facere in sunt impedit tempora, et amet! Velit quam illum vitae beatae tenetur vel sed eius, sapiente, repellat natus reprehenderit deserunt mollitia consequuntur, assumenda aliquam! Consequatur reiciendis, excepturi tempore, possimus soluta perferendis quidem cumque odio, deserunt et hic mollitia pariatur. Atque, possimus? Hic reprehenderit voluptatibus veniam rem, facilis optio est architecto, explicabo reiciendis quam ', '2023-10-19', '[\"php\",\"laravel\"]', 1, '2023-10-26 08:04:01', '2023-10-26 08:04:01'),
(4, '27NkuWSNkJgwiY8KwefRvGZEzjuvXJ-metaaXN0b2NrcGhvdG8tMTE2NjUyMTQ5Mi02MTJ4NjEyLmpwZw==-.jpg', 'Graphics Design', 'Toufiqur Rahman', 'css', 'lorem ipsum', 1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2023-10-27', '[\"css\"]', 3, '2023-10-26 08:05:11', '2023-10-26 08:05:11'),
(5, 'cuuvP91UHsvJDqTNRWOAziJEC5bdL0-metaaXN0b2NrcGhvdG8tMTE2NjUyMTQ5Mi02MTJ4NjEyLmpwZw==-.jpg', 'Negative effects of technology', 'Toufiqur Rahman', 'frist_phone', 'lorem ipsum', 1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2023-10-24', '[\"php\"]', 3, '2023-10-28 00:09:25', '2023-10-28 00:09:25'),
(6, 'GDy5j214cxadNvfExNYLRveO5jDzlb-metabWF4cmVzZGVmYXVsdC5qcGc=-.jpg', 'Positive effects of technology', 'ChatGPT', 'technology', 'Technology has had a profound and wide-ranging impact on society, bringing about numerous positive effects. It has improved our lives in various ways, enhancing efficiency, ', 1, 'Technology has had a profound and wide-ranging impact on society, bringing about numerous positive effects. It has improved our lives in various ways, enhancing efficiency, connectivity, and overall well-being. Here are some of the positive effects of technology:\n\nImproved Communication: Technology, particularly the internet and smartphones, has revolutionized communication. It allows people to stay in touch with friends and family around the world through video calls, instant messaging, and social media.\n\nIncreased Access to Information: The internet provides a vast repository of information on virtually any topic, enabling people to access educational resources, research, news, and more.\n\nEnhanced Education: Technology has transformed education through e-learning, online courses, and digital textbooks. Students can learn at their own pace and access educational materials from anywhere in the world.\n\nInnovations in Healthcare: Technology has led to significant advancements in medical diagnostics, treatments, and research. Telemedicine, wearable health devices, and electronic health records have improved patient care.\n\nEfficiency and Automation: Automation and robotics have improved efficiency in various industries, reducing labor-intensive tasks and increasing productivity.\n\nAccess to Entertainment: Technology has made entertainment more accessible through streaming services, video games, and digital media. It has also facilitated the creation and distribution of art and content by independent creators.\n\nEnvironmental Benefits: Technology has led to innovations in renewable energy, energy-efficient appliances, and eco-friendly transportation, helping to address environmental concerns.\n\nEnhanced Productivity: Technology tools such as word processors, spreadsheets, and project management software have increased workplace productivity and collaboration.\n\nGlobal Connectivity: The internet has connected people and businesses across the globe, facilitating international trade, collaboration, and cultural exchange.\n\nConvenience and Time-Saving: Online shopping, mobile banking, and various apps have made daily tasks more convenient, saving time and reducing the need for physical travel.\n\nInnovations in Transportation: Technology has led to advances in transportation, including electric vehicles, autonomous cars, and improved public transportation systems, with the potential to reduce traffic congestion and emissions.\n\nSpace Exploration: Technology has enabled space exploration and scientific discoveries in astronomy, physics, and planetary science, expanding our understanding of the universe.\n\nAid in Disaster Response: Technology plays a critical role in disaster management and response, allowing for quicker communication, search and rescue operations, and emergency coordination.\n\nSocial and Political Activism: Technology, especially social media, has empowered individuals and groups to raise awareness, mobilize for social and political causes, and promote positive change.\n\nAssistive Technology: Technology has greatly improved the quality of life for individuals with disabilities through assistive devices and software, enhancing accessibility and independence.\n\nResearch and Innovation: Technology accelerates research and innovation by providing tools for data analysis, simulations, and experimentation.\n\nImproved Agriculture: Precision agriculture, powered by technology, allows farmers to optimize crop yields, reduce resource usage, and make farming more sustainable.\n\nEfficient Resource Management: Technology can help manage resources more efficiently, whether in water conservation, waste reduction, or smart grid energy distribution.\n\nCrisis Response: Technology assists in crisis and emergency response, including early warning systems, coordination of relief efforts, and communication with affected populations.\n\nPersonal Convenience: From smart home devices to wearable technology, technology enhances personal convenience and quality of life.\n\nThese positive effects of technology highlight its role in shaping the modern world and improving the overall human experience. However, it\'s important to use technology responsibly and ethically to maximize its benefits while minimizing its negative consequences', '2023-11-04', '[\"technology\"]', 3, '2023-11-04 01:54:33', '2023-11-04 02:01:08');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `icon_class` varchar(255) DEFAULT NULL,
  `short_desc` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `icon_class`, `short_desc`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Graphics Design', '<i class=\"fa-solid fa-house\"></i>', 'Lorem Ipsum is simply dummy', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 1, '2023-11-02 01:29:23', '2023-11-02 01:29:23'),
(2, 'Web design', '<i class=\"fa-solid fa-book\"></i>', 'lorem ipsum', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequatur facere ipsum porro officiis natus inventore iusto. Recusandae ipsum cumque obcaecati impedit esse et inventore debitis animi voluptas cum soluta natus exercitationem, consequatur eaque ipsam atque quibusdam deserunt rem deleniti voluptate, voluptatum, nam fugiat incidunt repellendus? Laboriosam quos nisi illum voluptates, dolorum nam tempore voluptate nesciunt nostrum nobis eum quis at ea impedit illo voluptatem unde sequi cum assumenda magnam maxime vel earum quasi excepturi. Facilis quam quia minus corporis iure officiis facere in sunt impedit tempora, et amet! Velit quam illum vitae beatae tenetur vel sed eius, sapiente, repellat natus reprehenderit deserunt mollitia consequuntur, assumenda aliquam! Consequatur reiciendis, excepturi tempore, possimus soluta perferendis quidem cumque odio, deserunt et hic mollitia pariatur. Atque, possimus? Hic reprehenderit voluptatibus veniam rem, facilis optio est architecto, explicabo reiciendis quam&nbsp;</p>', 1, '2023-11-03 22:28:11', '2023-11-03 22:28:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@blog.com', NULL, '$2y$10$D00wEeuupysSOiqVM8SqF.3puloF8yj83Kf4/pRVvP5Cq7DLCgZo.', NULL, '2023-10-26 07:53:10', '2023-10-26 07:53:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ad_services`
--
ALTER TABLE `ad_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_category_id_foreign` (`category_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
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
-- AUTO_INCREMENT for table `ad_services`
--
ALTER TABLE `ad_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

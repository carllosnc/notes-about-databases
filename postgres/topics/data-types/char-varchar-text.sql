USE postgres;
DROP DATABASE IF EXISTS learn_pg;
CREATE DATABASE learn_pg;
USE learn_pg;

-- create

CREATE TABLE char_types (
  id SERIAL PRIMARY KEY,
  a CHAR(4),
  b CHAR(16),
  c TEXT
);

-- insert

INSERT INTO char_types(a, b, c) VALUES
('foo', 'nostrum', 'Sed inventore perspiciatis rerum. Dolor et tempore ducimus molestiae aut. Labore tempora non tempora ipsum. Ea temporibus commodi fugiat tempore corporis numquam nam enim. Sequi ut quaerat delectus quae quo autem voluptatem fuga perspiciatis. Enim quod reprehenderit blanditiis laborum asperiores.'),
('foo', 'commodi', 'Ducimus ipsam nulla nulla. Possimus quae quia qui deserunt in aut. Sed dicta nemo sed atque veritatis consequatur. Eaque in tenetur et ipsa omnis facere impedit. Sint sit autem rerum.'),
('foo', 'quo', 'Perspiciatis nam quia excepturi omnis sunt nihil. Ratione natus est odio quis sit nemo nobis molestiae nostrum. Fuga facere ex voluptatem rem eaque reprehenderit vitae iure.'),
('foo', 'ipsum', 'Iure est aspernatur voluptatibus asperiores non consequatur. Similique animi ullam accusamus ea quis. Nesciunt et consectetur minus quo. Aspernatur incidunt molestiae quia esse. Consequatur ipsam dolores quisquam cupiditate commodi qui cumque. Libero suscipit odit dolor qui quae.'),
('foo', 'rem', 'Fuga a impedit totam hic blanditiis magnam aut et numquam. Magnam aut nemo minima qui. Qui non natus omnis voluptatem. Amet alias iusto sit. Totam vel eligendi expedita ut eligendi eos eius. Distinctio officia repellendus.'),
('foo', 'ipsam', 'Et eius assumenda qui qui blanditiis et. Harum ut quo aliquid rerum vero. Sint rerum totam temporibus veniam impedit.'),
('foo', 'ipsum', 'Velit incidunt dolorem corrupti voluptas voluptas similique. Labore qui magni modi suscipit qui ipsum placeat sunt. Veniam sint dolor optio minus omnis eaque sunt nam. Officiis omnis dolor maiores quis sed. Nihil aperiam enim porro sed.'),
('foo', 'ut', 'Modi ullam culpa est molestiae magnam. Quam dolore nesciunt aliquid. Architecto et temporibus dolor eligendi dignissimos. Mollitia qui animi sapiente. Quae accusamus ducimus tempore doloremque. Optio quas quidem itaque facilis voluptas aspernatur sed tempore.'),
('foo', 'praesentium', 'Magni omnis temporibus dolore harum blanditiis commodi architecto illum ipsam. A perferendis quasi sit. Ut quidem omnis assumenda a.'),
('foo', 'quia', 'Excepturi quo laborum itaque placeat vel voluptas velit. Aut voluptatem voluptates harum assumenda nihil ipsum explicabo cupiditate. Illum esse vero natus aliquam ad dolores omnis.'),
('foo', 'iure', 'Hic nam inventore provident labore. Iure officiis rerum molestias voluptas quia error exercitationem corrupti. Unde commodi ut mollitia ad delectus nemo maxime ea in. Suscipit doloribus sed aspernatur perferendis animi quia. Et saepe et.'),
('foo', 'possimus', 'Illo voluptatem nam iusto quia molestias. Voluptatum voluptatem quos. Qui provident soluta non molestias. Sapiente molestiae consequatur.'),
('foo', 'quisquam', 'Vel et est iusto enim. Ducimus excepturi tempora blanditiis voluptas totam blanditiis repellat et. Occaecati harum sunt. Ea fugiat laudantium harum. Possimus hic harum dicta quia doloremque ducimus repellat voluptatibus. Beatae et aut nesciunt eum odio in.'),
('foo', 'voluptatum', 'Et et eum molestiae omnis. Voluptas incidunt voluptatibus alias debitis. Cupiditate similique esse saepe velit sapiente.'),
('foo', 'perferendis', 'Et blanditiis aspernatur beatae commodi voluptatem aut libero atque maxime. Ullam dolorum ex saepe dolores. Quam ut provident officia nihil ipsum ea. Repellat placeat quia.'),
('foo', 'consequatur', 'Quod ut aut et. Eum quas eligendi dolorem atque saepe libero velit beatae aliquid. Blanditiis facilis hic iusto voluptate ratione impedit cum et voluptatem. Dolorem quo ipsa aut maxime consequatur omnis necessitatibus illum.');

-- select

SELECT * FROM char_types;
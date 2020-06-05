/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 80020
Source Host           : localhost:3306
Source Database       : mysite_blog_db

Target Server Type    : MYSQL
Target Server Version : 80020
File Encoding         : 65001

Date: 2020-06-04 17:01:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `auth_group`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_group_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_permission`
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('5', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('8', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('9', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can add user', '4', 'add_user');
INSERT INTO `auth_permission` VALUES ('11', 'Can change user', '4', 'change_user');
INSERT INTO `auth_permission` VALUES ('12', 'Can delete user', '4', 'delete_user');
INSERT INTO `auth_permission` VALUES ('13', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('14', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('16', 'Can add session', '6', 'add_session');
INSERT INTO `auth_permission` VALUES ('17', 'Can change session', '6', 'change_session');
INSERT INTO `auth_permission` VALUES ('18', 'Can delete session', '6', 'delete_session');
INSERT INTO `auth_permission` VALUES ('19', 'Can add blog type', '7', 'add_blogtype');
INSERT INTO `auth_permission` VALUES ('20', 'Can change blog type', '7', 'change_blogtype');
INSERT INTO `auth_permission` VALUES ('21', 'Can delete blog type', '7', 'delete_blogtype');
INSERT INTO `auth_permission` VALUES ('22', 'Can add blog', '8', 'add_blog');
INSERT INTO `auth_permission` VALUES ('23', 'Can change blog', '8', 'change_blog');
INSERT INTO `auth_permission` VALUES ('24', 'Can delete blog', '8', 'delete_blog');
INSERT INTO `auth_permission` VALUES ('25', 'Can add read num', '9', 'add_readnum');
INSERT INTO `auth_permission` VALUES ('26', 'Can change read num', '9', 'change_readnum');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete read num', '9', 'delete_readnum');
INSERT INTO `auth_permission` VALUES ('28', 'Can add read num', '10', 'add_readnum');
INSERT INTO `auth_permission` VALUES ('29', 'Can change read num', '10', 'change_readnum');
INSERT INTO `auth_permission` VALUES ('30', 'Can delete read num', '10', 'delete_readnum');
INSERT INTO `auth_permission` VALUES ('31', 'Can add read detail', '11', 'add_readdetail');
INSERT INTO `auth_permission` VALUES ('32', 'Can change read detail', '11', 'change_readdetail');
INSERT INTO `auth_permission` VALUES ('33', 'Can delete read detail', '11', 'delete_readdetail');
INSERT INTO `auth_permission` VALUES ('34', 'Can add comment', '12', 'add_comment');
INSERT INTO `auth_permission` VALUES ('35', 'Can change comment', '12', 'change_comment');
INSERT INTO `auth_permission` VALUES ('36', 'Can delete comment', '12', 'delete_comment');
INSERT INTO `auth_permission` VALUES ('37', 'Can add like count', '13', 'add_likecount');
INSERT INTO `auth_permission` VALUES ('38', 'Can change like count', '13', 'change_likecount');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete like count', '13', 'delete_likecount');
INSERT INTO `auth_permission` VALUES ('40', 'Can add like record', '14', 'add_likerecord');
INSERT INTO `auth_permission` VALUES ('41', 'Can change like record', '14', 'change_likerecord');
INSERT INTO `auth_permission` VALUES ('42', 'Can delete like record', '14', 'delete_likerecord');
INSERT INTO `auth_permission` VALUES ('43', 'Can add profile', '15', 'add_profile');
INSERT INTO `auth_permission` VALUES ('44', 'Can change profile', '15', 'change_profile');
INSERT INTO `auth_permission` VALUES ('45', 'Can delete profile', '15', 'delete_profile');
INSERT INTO `auth_permission` VALUES ('46', 'Can view log entry', '1', 'view_logentry');
INSERT INTO `auth_permission` VALUES ('47', 'Can view permission', '2', 'view_permission');
INSERT INTO `auth_permission` VALUES ('48', 'Can view group', '3', 'view_group');
INSERT INTO `auth_permission` VALUES ('49', 'Can view user', '4', 'view_user');
INSERT INTO `auth_permission` VALUES ('50', 'Can view content type', '5', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('51', 'Can view session', '6', 'view_session');
INSERT INTO `auth_permission` VALUES ('52', 'Can view blog', '8', 'view_blog');
INSERT INTO `auth_permission` VALUES ('53', 'Can view blog type', '7', 'view_blogtype');
INSERT INTO `auth_permission` VALUES ('54', 'Can view read num', '10', 'view_readnum');
INSERT INTO `auth_permission` VALUES ('55', 'Can view read detail', '11', 'view_readdetail');
INSERT INTO `auth_permission` VALUES ('56', 'Can view comment', '12', 'view_comment');
INSERT INTO `auth_permission` VALUES ('57', 'Can view like count', '13', 'view_likecount');
INSERT INTO `auth_permission` VALUES ('58', 'Can view like record', '14', 'view_likerecord');
INSERT INTO `auth_permission` VALUES ('59', 'Can view profile', '15', 'view_profile');

-- ----------------------------
-- Table structure for `auth_user`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES ('3', 'pbkdf2_sha256$180000$vDxgF8x6gNHs$m2/CGFtlcwrpjltBQoALsf/4vhdeMa10uJgacU1VXuo=', '2020-06-03 09:45:34.735000', '1', '天健寺', '', '', 'zhaokai56789@163.com', '1', '1', '2020-06-02 08:44:26.627000');
INSERT INTO `auth_user` VALUES ('4', 'pbkdf2_sha256$180000$UyzslobNjcey$m3qc26MfZ1u5Q7qA9HuORz+cuGCZWOE9SKw1rqGvMvk=', '2020-06-03 08:13:47.895000', '0', 'yyyy', '', '', 'dasdas@163.com', '0', '1', '2020-06-02 11:40:05.241000');

-- ----------------------------
-- Table structure for `auth_user_groups`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_user_user_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `blog_blog`
-- ----------------------------
DROP TABLE IF EXISTS `blog_blog`;
CREATE TABLE `blog_blog` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `last_updated_time` datetime(6) NOT NULL,
  `author_id` int NOT NULL,
  `blog_type_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_blog_author_id_8791af69_fk_auth_user_id` (`author_id`),
  KEY `blog_blog_blog_type_id_de11bd65_fk_blog_blogtype_id` (`blog_type_id`),
  CONSTRAINT `blog_blog_author_id_8791af69_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `blog_blog_blog_type_id_de11bd65_fk_blog_blogtype_id` FOREIGN KEY (`blog_type_id`) REFERENCES `blog_blogtype` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of blog_blog
-- ----------------------------
INSERT INTO `blog_blog` VALUES ('40', 'ContentType matching query does not exist', '<p><code><ins><big><span class=\"marker\">代码</span></big></ins><br />\r\ncontent_type = request.POST.get(&#39;content_type&#39;, &#39;&#39;)<br />\r\nobject_id = int(request.POST.get(&#39;object_id&#39;, &#39;&#39;))<br />\r\nContentType.objects.get(model=content_type)</code></p>\r\n\r\n<h3>错误提示<br />\r\nContentType matching query does not exist.</h3>\r\n\r\n<h4>原因<br />\r\n&nbsp;HTML界面中```&lt;input type=&quot;hidden&quot; name=&quot;content_type&quot; value=&quot;blog&quot;&gt;```，name出错，写成了```content-type```，<br />\r\n&nbsp;导致request.POST.get(&#39;content_type&#39;, &#39;&#39;)得不到content_type的字符串，只能得到None，<br />\r\n&nbsp;ContentType的参数输入为None，就查不到记录，返回错误提示</h4>', '2020-06-03 09:51:34.734000', '2020-06-03 09:51:34.734000', '3', '5');
INSERT INTO `blog_blog` VALUES ('44', '博客网站之——Django Form表单', '## 为了登录功能的清晰，将Form表单功能代码分为两部分\r\n\r\n### LoginForm：对登录信息进行处理\r\n\r\n```python\r\nclass LoginForm(forms.Form):\r\n    username = forms.CharField(label=\'用户名\', required=True)\r\n    password = forms.CharField(label=\'密码\', widget=forms.PasswordInput)\r\n\r\n    def clean(self):\r\n        username = self.cleaned_data[\'username\']\r\n        password = self.cleaned_data[\'password\']\r\n        user = auth.authenticate(username=username, password=password)\r\n        if user is None:\r\n            raise forms.ValidationError(\'用户名或密码不正确\')\r\n        else:\r\n            self.cleaned_data[\'user\'] = user\r\n        return self.cleaned_data\r\n\r\n```\r\n\r\n* 在这部分中先对输入的Form表单清洗得到用户名和密码\r\n\r\n```\r\nusername = self.cleaned_data[\'username\']\r\npassword = self.cleaned_data[\'password\']\r\n```\r\n\r\n* 用auth.authenticate进行判断是否正确，正确返回user，错误返回None\r\n* 将user储存到字典cleaned_data[\'user\']中\r\n\r\n### login：对request和LoginForm传递的信息分类，返回相应的页面\r\n\r\n```\r\ndef login(request):\r\n    if request.method == \'POST\':\r\n        login_form = LoginForm(request.POST)\r\n        if login_form.is_valid():\r\n            user = login_form.cleaned_data[\'user\']\r\n            auth.login(request, user)\r\n            return redirect(request.GET.get(\'from\', reverse(\'home\')))\r\n    else:\r\n        login_form = LoginForm()\r\n\r\n    context ={}\r\n    context[\'login_form\'] = login_form\r\n    return render(request, \'login.html\', context)\r\n```\r\n\r\n* 从下面的HTML页面中发出的登录请求是GET方式，此时返回登录页面login.html\r\n\r\n```\r\n您尚未登录，登录以后才可以评论\r\n<a href=\"{% url \'login\' %}?from={{ request.get_full_path }}\">登录</a>\r\n```\r\n\r\n* 当进入到login.html页面中，接收到POST请求，用LoginForm进行处理，如果登录信息错误就报错，否则就使用user登录，然后跳转回登录前的页面。\r\n\r\n```\r\nuser = login_form.cleaned_data[\'user\']\r\nauth.login(request, user)\r\nreturn redirect(request.GET.get(\'from\', reverse(\'home\')))\r\n```', '2020-06-03 12:10:20.057000', '2020-06-03 12:10:20.057000', '3', '1');
INSERT INTO `blog_blog` VALUES ('47', '在django中配置Markdown', '# 在django中配置Markdown\r\n\r\n## 后端配置\r\n\r\n### 1. 安装django-mdeditor\r\n\r\n```\r\n	pip install django-mdeditor\r\n```\r\n\r\n### 2. 在setting文件注册\r\n\r\n```\r\n	INSTALLED_APPS = [\r\n	    \'mdeditor\'\r\n	]\r\n```\r\n\r\n### 3. 添加markdown上传的图片保存路径\r\n\r\n```\r\n	# 在项目目录下新建一个uploads文件夹\r\n	MEDIA_URL = \'/media/\' \r\n	MEDIA_ROOT = os.path.join(BASE_DIR, \'uploads\')  \r\n```\r\n\r\n### 4. 添加markdown到项目的urls文件,并且添加图片路径\r\n\r\n```\r\n	from django.conf import settings\r\n	from django.conf.urls.static import static\r\n\r\n	urlpatterns = [\r\n	    url(r\'mdeditor/\', include(\'mdeditor.urls\')),\r\n	]\r\n\r\n	#没有这个设置，上传的图片不会显示出来\r\n	if settings.DEBUG:\r\n	    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)\r\n```\r\n\r\n## 前端页面\r\n\r\n### 1. 下载安装两个库\r\n\r\n```\r\n	# 将view视图中获取到数据库的数据，修饰为html语句，传到前端\r\n	pip install markdown\r\n	#实现代码高亮\r\n	pip install Pygments \r\n```\r\n\r\n### 2. 安装好后执行\r\n\r\n```\r\n	pygmentize -S default -f html -a .codehilite > code.css\r\n	\r\n	我的是在系统盘自己的账户文件夹生成的code.css文件，例如C:\\Users\\96108\r\n    将这个css文件加入到你的static文件夹下(只要能正确引入时就可以)\r\n```\r\n\r\n### 3. 在需要高亮的html文件里面导入刚刚生成的css文件\r\n\r\n```\r\n	# 代码高亮\r\n	<link rel=\"stylesheet\" type=\"text/css\" href=\"{% static \'code.css\' %}\"> \r\n```\r\n\r\n### 4. 在blog.views.py中配置\r\n\r\n```\r\n	def blog_detail(request, blog_pk):\r\n		blog = get_object_or_404(Blog, pk=blog_pk)\r\n	\r\n	    blog.content = markdown.markdown(blog.content, extensions=[\r\n	        \'markdown.extensions.extra\',\r\n	        \'markdown.extensions.codehilite\',  # 语法高亮拓展\r\n	        \'markdown.extensions.toc\'  # 自动生成目录\r\n	    ])  # 修改blog.content内容为html\r\n```\r\n\r\n### 5. 前端页面使用safe过滤器\r\n\r\n```\r\n	<div class=\"blog-content\">{{ blog.content|safe }}</div>\r\n```\r\n\r\n## 总结，配置完成使用会出现这种问题\r\n1. 图片还是不能上传\r\n2. 会出现红色框框\r\n\r\n[![](F:\\拓展用户模型的方法\\uploads\\editor\\2020-06-03_133244_20200603134734284376.png)](http://localhost:8000/F:\\拓展用户模型的方法\\uploads\\editor\\2020-06-03_133244_20200603134734284376.png)', '2020-06-03 14:09:52.214000', '2020-06-03 14:09:52.214000', '3', '1');
INSERT INTO `blog_blog` VALUES ('49', '图片上传测试1', '### 测试发现可以上传网络图片\r\n![](https://dss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=2221821637,805504292&fm=26&gp=0.jpg)', '2020-06-03 14:31:20.903000', '2020-06-03 14:31:20.903000', '3', '2');
INSERT INTO `blog_blog` VALUES ('50', '图片上传测试2', '### 这个是本地图片链接，应该不能上传![](http://localhost:8000/G:\\FSCapture/2020-06-03_133244.png)\r\n![](http://localhost:8000/G:\\FSCapture/2020-06-03_133244.png)', '2020-06-03 14:33:49.565000', '2020-06-03 14:33:49.565000', '3', '1');
INSERT INTO `blog_blog` VALUES ('51', '父类和子类不同初始化方法', '# 父类和子类不同初始化方法\r\n\r\n### 代码\r\n\r\n```python\r\nclass CommentForm(forms.Form):\r\n    def __init__(self, *args, **kwargs):\r\n        if \'user\' in kwargs:\r\n            self.user = kwargs.pop(\'user\')\r\n        super(CommentForm, self).__init__(*args, **kwargs)\r\n```\r\n\r\n```python\r\nself.user = kwargs.pop(\'user\')\r\n```\r\n\r\n* 将kwargs里的user信息删除并赋值给self.user\r\n\r\n```python\r\nsuper(CommentForm, self).__init__(*args, **kwargs)\r\n```\r\n\r\n* 用父类forms.Form的初始化方法进行初始化其他属性\r\n\r\n### 原因\r\n\r\n* 子类继承了父类的所有属性和方法，父类属性自然用父类方法来进行初始化。如果父类的某些属性初始化的逻辑在子类中与父类的不同，不使用父类的方法，自己重新初始化或者部分使用也可以。', '2020-06-03 14:40:14.519000', '2020-06-03 14:40:14.519000', '3', '1');
INSERT INTO `blog_blog` VALUES ('52', '博客阅读计数统计方法', '# 博客阅读计数统计方法\r\n## 一、简单添加\r\n* 在Blog属性中添加‘阅读数’\r\n* 每次调用views.blog_detail时，阅读次数加一，并保存\r\n## 二、设置COOKIE，简单调用ReadNum类\r\n* 当从cookie中检测到当前文章的记录，就不增加阅读次数\r\n* 如果未检测到阅读记录\r\n  * 当前文章有阅读记录的属性，将当前博客阅读次数加一\r\n  * 当前文章没有阅读记录的属性，就调用ReadNum类将当前博客初始化加一\r\n## 三、创建阅读计数方法APP\r\n* 解决了两个缺点，且计数APP可用于其他模型，比前两个方法较复杂\r\n## 四、图表显示阅读量变化\r\n* 直观看到阅读量的变化趋势\r\n\r\n![](http://127.0.0.1:8000/F:\\XMind文档/博客阅读计数方法.png)', '2020-06-03 14:43:48.310000', '2020-06-03 14:43:48.310000', '3', '1');
INSERT INTO `blog_blog` VALUES ('53', '热门博客排行的问题', '# 热门博客排行的问题\r\n\r\n## 代码如下，教程B站搜索再敲一行代码\r\n\r\n```python\r\ndef get_a_week_hot_blog():\r\n    today = timezone.now().date()\r\n    a_week = today - datetime.timedelta(days=6)\r\n    read_details = Blog.objects.filter(read_detail__date__lte=today, read_detail__date__gte=a_week)\\\r\n				                     .values(\'id\', \'title\')\\\r\n				                     .annotate(read_num_sum=Sum(\'read_detail__read_num\'))\\\r\n				                     .order_by(\'-read_num_sum\')\r\n    return read_details[:7]\r\n\r\n\r\nclass Blog(models.Model, ReadNumExpandMethod):\r\n    read_detail = GenericRelation(ReadDetail)\r\n\r\n\r\nclass ReadDetail(models.Model):\r\n    date = models.DateField(default=timezone.now)\r\n    read_num = models.IntegerField(default=0)\r\n    content_type = models.ForeignKey(ContentType, on_delete=models.DO_NOTHING)\r\n    object_id = models.PositiveIntegerField()\r\n    content_object = GenericForeignKey(\'content_type\', \'object_id\')\r\n```\r\n\r\n* GenericRelation使Blog关联ReadDtailNum中的内容，让Blog可以直接调用eadDetailNum中的date属性\r\n  * Blog使用read_detail属性\r\n  * read_detail关联到ReadDetail，可以使用ReadDetail的属性date\r\n  * 再加上小于等于的限制条件lte，大于等于的限制条件gte\r\n  * filter函数筛选出前六天以及今天的ReadDetail记录表\r\n \r\n* values(\'id\', \'title\')，用id和标题进行分组\r\n\r\n* annotate(read_num_sum=Sum(\'read_detail__read_num\'))，将同一组记录下的read_num项相加，得到七天的阅读总数\r\n\r\n* order_by(\'-read_num_sum\')，按照从大到小排序\r\n\r\n* return read_details[:7]返回了七天阅读总数前七名的博客', '2020-06-03 14:44:45.286000', '2020-06-03 14:44:45.286000', '3', '1');

-- ----------------------------
-- Table structure for `blog_blogtype`
-- ----------------------------
DROP TABLE IF EXISTS `blog_blogtype`;
CREATE TABLE `blog_blogtype` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type_name` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of blog_blogtype
-- ----------------------------
INSERT INTO `blog_blogtype` VALUES ('1', 'Django');
INSERT INTO `blog_blogtype` VALUES ('2', '随笔');
INSERT INTO `blog_blogtype` VALUES ('4', '学习笔记');
INSERT INTO `blog_blogtype` VALUES ('5', 'BUG记录');

-- ----------------------------
-- Table structure for `comment_comment`
-- ----------------------------
DROP TABLE IF EXISTS `comment_comment`;
CREATE TABLE `comment_comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `object_id` int unsigned NOT NULL,
  `text` longtext COLLATE utf8_unicode_ci NOT NULL,
  `comment_time` datetime(6) NOT NULL,
  `content_type_id` int NOT NULL,
  `user_id` int NOT NULL,
  `parent_id` int DEFAULT NULL,
  `reply_to_id` int DEFAULT NULL,
  `root_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comment_comment_content_type_id_fbfb9793_fk_django_co` (`content_type_id`),
  KEY `comment_comment_parent_id_b612524c_fk_comment_comment_id` (`parent_id`),
  KEY `comment_comment_reply_to_id_e0adcef8_fk_auth_user_id` (`reply_to_id`),
  KEY `comment_comment_root_id_28721811_fk_comment_comment_id` (`root_id`),
  KEY `comment_comment_user_id_6078e57b_fk_auth_user_id` (`user_id`),
  CONSTRAINT `comment_comment_content_type_id_fbfb9793_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `comment_comment_parent_id_b612524c_fk_comment_comment_id` FOREIGN KEY (`parent_id`) REFERENCES `comment_comment` (`id`),
  CONSTRAINT `comment_comment_reply_to_id_e0adcef8_fk_auth_user_id` FOREIGN KEY (`reply_to_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `comment_comment_root_id_28721811_fk_comment_comment_id` FOREIGN KEY (`root_id`) REFERENCES `comment_comment` (`id`),
  CONSTRAINT `comment_comment_user_id_6078e57b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `comment_comment_chk_1` CHECK ((`object_id` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of comment_comment
-- ----------------------------
INSERT INTO `comment_comment` VALUES ('26', '39', '<p>而我却二</p>', '2020-06-02 21:36:06.280000', '8', '3', null, null, null);
INSERT INTO `comment_comment` VALUES ('27', '39', '<p>好</p>', '2020-06-03 08:14:12.485000', '8', '4', null, null, null);
INSERT INTO `comment_comment` VALUES ('28', '37', '<p>回复邮件</p>', '2020-06-03 08:57:06.596000', '8', '4', null, null, null);
INSERT INTO `comment_comment` VALUES ('29', '37', '<p>大幅度</p>', '2020-06-03 09:01:13.546000', '8', '4', null, null, null);
INSERT INTO `comment_comment` VALUES ('30', '37', '<p>市场撒</p>', '2020-06-03 09:04:14.081000', '8', '4', null, null, null);
INSERT INTO `comment_comment` VALUES ('31', '37', '<p>爱的参数</p>', '2020-06-03 09:08:21.921000', '8', '4', null, null, null);
INSERT INTO `comment_comment` VALUES ('32', '37', '<p>add方法</p>', '2020-06-03 09:13:28.738000', '8', '4', null, null, null);
INSERT INTO `comment_comment` VALUES ('33', '37', '<p>大萨达</p>', '2020-06-03 09:14:18.793000', '8', '4', null, null, null);
INSERT INTO `comment_comment` VALUES ('34', '37', '<p>实打实</p>', '2020-06-03 09:15:49.192000', '8', '4', null, null, null);
INSERT INTO `comment_comment` VALUES ('35', '37', '<p>搜索</p>', '2020-06-03 09:19:20.393000', '8', '4', null, null, null);
INSERT INTO `comment_comment` VALUES ('36', '37', '<p>大城市</p>', '2020-06-03 09:22:12.673000', '8', '4', null, null, null);
INSERT INTO `comment_comment` VALUES ('37', '37', '<p>啊啊</p>', '2020-06-03 09:26:48.726000', '8', '4', null, null, null);
INSERT INTO `comment_comment` VALUES ('38', '37', '<p>SaaS</p>', '2020-06-03 09:28:07.555000', '8', '4', null, null, null);
INSERT INTO `comment_comment` VALUES ('39', '39', '<p>打算</p>', '2020-06-03 09:29:52.909000', '8', '4', '26', '3', '26');
INSERT INTO `comment_comment` VALUES ('40', '39', '<p>大萨达实打实</p>', '2020-06-03 09:32:16.665000', '8', '4', null, null, null);
INSERT INTO `comment_comment` VALUES ('41', '39', '<p>多吃点</p>', '2020-06-03 09:35:28.576000', '8', '4', null, null, null);
INSERT INTO `comment_comment` VALUES ('42', '47', '<blockquote>\r\n<p>&lt;div class=&quot;blog-content&quot;&gt;{{ blog.content|safe }}&lt;/div&gt;</p>\r\n</blockquote>', '2020-06-03 14:15:03.501000', '8', '3', null, null, null);

-- ----------------------------
-- Table structure for `django_admin_log`
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES ('28', '2020-06-02 08:49:06.037000', '1', 'ysh', '3', '', '4', '3');
INSERT INTO `django_admin_log` VALUES ('29', '2020-06-02 08:49:06.805000', '2', 'ysh1', '3', '', '4', '3');
INSERT INTO `django_admin_log` VALUES ('30', '2020-06-02 08:51:09.371000', '37', '<Blog: 博客阅读计数统计方法>', '1', '[{\"added\": {}}]', '8', '3');
INSERT INTO `django_admin_log` VALUES ('31', '2020-06-02 08:52:48.025000', '38', '<Blog: 博客网站之——Django Form表单>', '1', '[{\"added\": {}}]', '8', '3');
INSERT INTO `django_admin_log` VALUES ('32', '2020-06-02 08:53:47.640000', '39', '<Blog: 父类和子类不同初始化方法>', '1', '[{\"added\": {}}]', '8', '3');
INSERT INTO `django_admin_log` VALUES ('33', '2020-06-02 21:40:39.055000', '3', '感悟', '3', '', '7', '3');
INSERT INTO `django_admin_log` VALUES ('34', '2020-06-02 21:40:51.077000', '4', '学习笔记', '1', '[{\"added\": {}}]', '7', '3');
INSERT INTO `django_admin_log` VALUES ('35', '2020-06-02 21:41:08.134000', '5', 'BUG记录', '1', '[{\"added\": {}}]', '7', '3');
INSERT INTO `django_admin_log` VALUES ('36', '2020-06-03 09:51:35.119000', '40', '<Blog: ContentType matching query does not exist>', '1', '[{\"added\": {}}]', '8', '3');
INSERT INTO `django_admin_log` VALUES ('37', '2020-06-03 10:41:28.780000', '41', '<Blog: 内容类型ContentType>', '1', '[{\"added\": {}}]', '8', '3');
INSERT INTO `django_admin_log` VALUES ('38', '2020-06-03 10:42:20.002000', '41', '<Blog: 内容类型ContentType>', '3', '', '8', '3');
INSERT INTO `django_admin_log` VALUES ('39', '2020-06-03 10:45:32.917000', '42', '<Blog: 内容类型ContentType>', '1', '[{\"added\": {}}]', '8', '3');
INSERT INTO `django_admin_log` VALUES ('40', '2020-06-03 11:07:52.847000', '43', '<Blog: two>', '1', '[{\"added\": {}}]', '8', '3');
INSERT INTO `django_admin_log` VALUES ('41', '2020-06-03 11:10:03.299000', '43', '<Blog: two>', '3', '', '8', '3');
INSERT INTO `django_admin_log` VALUES ('42', '2020-06-03 11:10:03.948000', '42', '<Blog: 内容类型ContentType>', '3', '', '8', '3');
INSERT INTO `django_admin_log` VALUES ('43', '2020-06-03 12:10:20.353000', '44', '<Blog: 博客网站之——Django Form表单>', '1', '[{\"added\": {}}]', '8', '3');
INSERT INTO `django_admin_log` VALUES ('44', '2020-06-03 13:43:07.387000', '45', '<Blog: 在django中配置Markdown>', '1', '[{\"added\": {}}]', '8', '3');
INSERT INTO `django_admin_log` VALUES ('45', '2020-06-03 13:47:00.439000', '45', '<Blog: 在django中配置Markdown>', '3', '', '8', '3');
INSERT INTO `django_admin_log` VALUES ('46', '2020-06-03 13:51:08.200000', '46', '<Blog: 在django中配置Markdown>', '1', '[{\"added\": {}}]', '8', '3');
INSERT INTO `django_admin_log` VALUES ('47', '2020-06-03 13:54:54.894000', '46', '<Blog: 在django中配置Markdown>', '3', '', '8', '3');
INSERT INTO `django_admin_log` VALUES ('48', '2020-06-03 14:09:52.512000', '47', '<Blog: 在django中配置Markdown>', '1', '[{\"added\": {}}]', '8', '3');
INSERT INTO `django_admin_log` VALUES ('49', '2020-06-03 14:22:32.264000', '48', '<Blog: two>', '1', '[{\"added\": {}}]', '8', '3');
INSERT INTO `django_admin_log` VALUES ('50', '2020-06-03 14:23:00.404000', '48', '<Blog: two>', '3', '', '8', '3');
INSERT INTO `django_admin_log` VALUES ('51', '2020-06-03 14:31:21.197000', '49', '<Blog: 图片上传测试1>', '1', '[{\"added\": {}}]', '8', '3');
INSERT INTO `django_admin_log` VALUES ('52', '2020-06-03 14:33:49.863000', '50', '<Blog: 图片上传测试2>', '1', '[{\"added\": {}}]', '8', '3');
INSERT INTO `django_admin_log` VALUES ('53', '2020-06-03 14:39:30.353000', '39', '<Blog: 父类和子类不同初始化方法>', '3', '', '8', '3');
INSERT INTO `django_admin_log` VALUES ('54', '2020-06-03 14:40:14.821000', '51', '<Blog: 父类和子类不同初始化方法>', '1', '[{\"added\": {}}]', '8', '3');
INSERT INTO `django_admin_log` VALUES ('55', '2020-06-03 14:42:11.423000', '38', '<Blog: 博客网站之——Django Form表单>', '3', '', '8', '3');
INSERT INTO `django_admin_log` VALUES ('56', '2020-06-03 14:42:11.787000', '37', '<Blog: 博客阅读计数统计方法>', '3', '', '8', '3');
INSERT INTO `django_admin_log` VALUES ('57', '2020-06-03 14:43:48.606000', '52', '<Blog: 博客阅读计数统计方法>', '1', '[{\"added\": {}}]', '8', '3');
INSERT INTO `django_admin_log` VALUES ('58', '2020-06-03 14:44:45.287000', '53', '<Blog: 热门博客排行的问题>', '1', '[{\"added\": {}}]', '8', '3');

-- ----------------------------
-- Table structure for `django_content_type`
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('4', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('8', 'blog', 'blog');
INSERT INTO `django_content_type` VALUES ('7', 'blog', 'blogtype');
INSERT INTO `django_content_type` VALUES ('9', 'blog', 'readnum');
INSERT INTO `django_content_type` VALUES ('12', 'comment', 'comment');
INSERT INTO `django_content_type` VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('13', 'likes', 'likecount');
INSERT INTO `django_content_type` VALUES ('14', 'likes', 'likerecord');
INSERT INTO `django_content_type` VALUES ('11', 'read_statistics', 'readdetail');
INSERT INTO `django_content_type` VALUES ('10', 'read_statistics', 'readnum');
INSERT INTO `django_content_type` VALUES ('6', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('15', 'user', 'profile');

-- ----------------------------
-- Table structure for `django_migrations`
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2020-06-03 22:54:31.210710');
INSERT INTO `django_migrations` VALUES ('2', 'auth', '0001_initial', '2020-06-03 22:54:31.375263');
INSERT INTO `django_migrations` VALUES ('3', 'admin', '0001_initial', '2020-06-03 22:54:31.781177');
INSERT INTO `django_migrations` VALUES ('4', 'admin', '0002_logentry_remove_auto_add', '2020-06-03 22:54:31.944740');
INSERT INTO `django_migrations` VALUES ('5', 'admin', '0003_logentry_add_action_flag_choices', '2020-06-03 22:54:31.955740');
INSERT INTO `django_migrations` VALUES ('6', 'contenttypes', '0002_remove_content_type_name', '2020-06-03 22:54:32.060431');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0002_alter_permission_name_max_length', '2020-06-03 22:54:32.113288');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0003_alter_user_email_max_length', '2020-06-03 22:54:32.179114');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0004_alter_user_username_opts', '2020-06-03 22:54:32.188088');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0005_alter_user_last_login_null', '2020-06-03 22:54:32.248927');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0006_require_contenttypes_0002', '2020-06-03 22:54:32.252916');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0007_alter_validators_add_error_messages', '2020-06-03 22:54:32.267877');
INSERT INTO `django_migrations` VALUES ('13', 'auth', '0008_alter_user_username_max_length', '2020-06-03 22:54:32.366611');
INSERT INTO `django_migrations` VALUES ('14', 'auth', '0009_alter_user_last_name_max_length', '2020-06-03 22:54:32.429444');
INSERT INTO `django_migrations` VALUES ('15', 'auth', '0010_alter_group_name_max_length', '2020-06-03 22:54:32.497263');
INSERT INTO `django_migrations` VALUES ('16', 'auth', '0011_update_proxy_permissions', '2020-06-03 22:54:32.508233');
INSERT INTO `django_migrations` VALUES ('17', 'blog', '0001_initial', '2020-06-03 22:54:32.625918');
INSERT INTO `django_migrations` VALUES ('18', 'blog', '0002_auto_20180120_0210', '2020-06-03 22:54:32.682766');
INSERT INTO `django_migrations` VALUES ('19', 'blog', '0003_auto_20180205_0147', '2020-06-03 22:54:32.693769');
INSERT INTO `django_migrations` VALUES ('20', 'blog', '0004_auto_20180205_0205', '2020-06-03 22:54:32.704744');
INSERT INTO `django_migrations` VALUES ('21', 'blog', '0005_blog_readed_num', '2020-06-03 22:54:32.751583');
INSERT INTO `django_migrations` VALUES ('22', 'blog', '0006_auto_20180224_0132', '2020-06-03 22:54:32.926115');
INSERT INTO `django_migrations` VALUES ('23', 'blog', '0007_auto_20180224_0212', '2020-06-03 22:54:33.032830');
INSERT INTO `django_migrations` VALUES ('24', 'blog', '0008_auto_20180426_0048', '2020-06-03 22:54:33.208360');
INSERT INTO `django_migrations` VALUES ('25', 'blog', '0009_auto_20200603_2254', '2020-06-03 22:54:33.222324');
INSERT INTO `django_migrations` VALUES ('26', 'comment', '0001_initial', '2020-06-03 22:54:33.275183');
INSERT INTO `django_migrations` VALUES ('27', 'comment', '0002_auto_20180413_0417', '2020-06-03 22:54:33.465701');
INSERT INTO `django_migrations` VALUES ('28', 'comment', '0003_auto_20180413_0422', '2020-06-03 22:54:33.578371');
INSERT INTO `django_migrations` VALUES ('29', 'comment', '0004_auto_20180413_0431', '2020-06-03 22:54:33.758889');
INSERT INTO `django_migrations` VALUES ('30', 'comment', '0005_auto_20180413_0435', '2020-06-03 22:54:33.937410');
INSERT INTO `django_migrations` VALUES ('31', 'comment', '0006_auto_20180426_0048', '2020-06-03 22:54:34.599640');
INSERT INTO `django_migrations` VALUES ('32', 'likes', '0001_initial', '2020-06-03 22:54:34.674439');
INSERT INTO `django_migrations` VALUES ('33', 'read_statistics', '0001_initial', '2020-06-03 22:54:34.842990');
INSERT INTO `django_migrations` VALUES ('34', 'read_statistics', '0002_readdetail', '2020-06-03 22:54:34.964664');
INSERT INTO `django_migrations` VALUES ('35', 'read_statistics', '0003_auto_20180426_0048', '2020-06-03 22:54:35.253909');
INSERT INTO `django_migrations` VALUES ('36', 'sessions', '0001_initial', '2020-06-03 22:54:35.306749');
INSERT INTO `django_migrations` VALUES ('37', 'user', '0001_initial', '2020-06-03 22:54:35.372573');
INSERT INTO `django_migrations` VALUES ('38', 'user', '0002_auto_20200602_2114', '2020-06-03 22:54:35.514194');

-- ----------------------------
-- Table structure for `django_session`
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('1yxmbfojymxplr0akqy57m3lb8ynzrf4', 'N2IzMmViYzE3ZTUyYmYxOGI1MmRlNTQzM2E0NDU5NDc2MmVkNGMyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWMyOWQyMWE2ZTQwOGMwNDg3NzQ4ZGNjZWIxNWNkMjlmZGI5NjIxIn0=', '2018-03-14 16:48:33.818000');
INSERT INTO `django_session` VALUES ('2nsxrgbqo9nx2cpw60u4d1e5eklevsql', 'N2IzMmViYzE3ZTUyYmYxOGI1MmRlNTQzM2E0NDU5NDc2MmVkNGMyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWMyOWQyMWE2ZTQwOGMwNDg3NzQ4ZGNjZWIxNWNkMjlmZGI5NjIxIn0=', '2018-02-18 17:27:25.844000');
INSERT INTO `django_session` VALUES ('2qf7m5i4cnn0ln4czsp3xuo2isaoq87r', 'N2IzMmViYzE3ZTUyYmYxOGI1MmRlNTQzM2E0NDU5NDc2MmVkNGMyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWMyOWQyMWE2ZTQwOGMwNDg3NzQ4ZGNjZWIxNWNkMjlmZGI5NjIxIn0=', '2018-02-08 16:45:08.096000');
INSERT INTO `django_session` VALUES ('50m0ssmlzznw4cfrv0pglpgnnrn2gusu', 'N2IzMmViYzE3ZTUyYmYxOGI1MmRlNTQzM2E0NDU5NDc2MmVkNGMyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWMyOWQyMWE2ZTQwOGMwNDg3NzQ4ZGNjZWIxNWNkMjlmZGI5NjIxIn0=', '2018-05-30 17:38:21.233000');
INSERT INTO `django_session` VALUES ('5ues38v1liobghawyackw3478ipbys74', 'N2IzMmViYzE3ZTUyYmYxOGI1MmRlNTQzM2E0NDU5NDc2MmVkNGMyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWMyOWQyMWE2ZTQwOGMwNDg3NzQ4ZGNjZWIxNWNkMjlmZGI5NjIxIn0=', '2018-05-16 17:42:54.560000');
INSERT INTO `django_session` VALUES ('60tpad54tedxqyhts7eiwrjlzvj19x0b', 'N2IzMmViYzE3ZTUyYmYxOGI1MmRlNTQzM2E0NDU5NDc2MmVkNGMyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWMyOWQyMWE2ZTQwOGMwNDg3NzQ4ZGNjZWIxNWNkMjlmZGI5NjIxIn0=', '2018-02-20 14:32:46.134000');
INSERT INTO `django_session` VALUES ('751hsr4r5zv9gmtb1surmhfk1ss2425w', 'YWE2N2VjMWU1ZGZlYzE2N2VhMjY0Yzc1MTllNjJjODBhNGU0Yjk1Nzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWJkNWZmOGM4MTcwZGJhMDg1MjU4MGZlYmUyNDc4NWY5NGRkMDYwIn0=', '2018-04-14 10:43:26.203000');
INSERT INTO `django_session` VALUES ('9vm5q2wvdehumcul1y62lf64f06ym3vo', 'N2IzMmViYzE3ZTUyYmYxOGI1MmRlNTQzM2E0NDU5NDc2MmVkNGMyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWMyOWQyMWE2ZTQwOGMwNDg3NzQ4ZGNjZWIxNWNkMjlmZGI5NjIxIn0=', '2018-01-07 17:54:43.802000');
INSERT INTO `django_session` VALUES ('aq3iqgc168w06s9s1ik6m3kdqy0x2ppn', 'N2IzMmViYzE3ZTUyYmYxOGI1MmRlNTQzM2E0NDU5NDc2MmVkNGMyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWMyOWQyMWE2ZTQwOGMwNDg3NzQ4ZGNjZWIxNWNkMjlmZGI5NjIxIn0=', '2018-05-30 16:40:37.908000');
INSERT INTO `django_session` VALUES ('b1qnir8vl580cod6y7i9hbxnpj46ce6i', 'N2IzMmViYzE3ZTUyYmYxOGI1MmRlNTQzM2E0NDU5NDc2MmVkNGMyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWMyOWQyMWE2ZTQwOGMwNDg3NzQ4ZGNjZWIxNWNkMjlmZGI5NjIxIn0=', '2018-02-21 17:00:03.358000');
INSERT INTO `django_session` VALUES ('cdph81y6ruv5qohm4zved37yeqng6v0z', 'N2IzMmViYzE3ZTUyYmYxOGI1MmRlNTQzM2E0NDU5NDc2MmVkNGMyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWMyOWQyMWE2ZTQwOGMwNDg3NzQ4ZGNjZWIxNWNkMjlmZGI5NjIxIn0=', '2018-04-08 18:33:21.018000');
INSERT INTO `django_session` VALUES ('dt02pppm6k4wvp26j03xwltr1ddki4fx', 'N2IzMmViYzE3ZTUyYmYxOGI1MmRlNTQzM2E0NDU5NDc2MmVkNGMyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWMyOWQyMWE2ZTQwOGMwNDg3NzQ4ZGNjZWIxNWNkMjlmZGI5NjIxIn0=', '2018-04-08 18:29:24.971000');
INSERT INTO `django_session` VALUES ('dxxqn20sm5wvnhzg5tre82jt3cyqs2ax', 'NWNlNzI2MjMxNDFlNGY5NDU2YTdlZDMzZmQyZmJmMzMxMTMzNDQ4Yjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0MTU0MmRiZDFiZTY4YzRhMTQ0ZDVhZjI5MzYxMDhjMTIzOGJmOTRiIn0=', '2020-06-17 09:45:34.943000');
INSERT INTO `django_session` VALUES ('h276ptux5jgj6nede138nryoszqobd7k', 'N2IzMmViYzE3ZTUyYmYxOGI1MmRlNTQzM2E0NDU5NDc2MmVkNGMyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWMyOWQyMWE2ZTQwOGMwNDg3NzQ4ZGNjZWIxNWNkMjlmZGI5NjIxIn0=', '2018-05-16 17:37:24.065000');
INSERT INTO `django_session` VALUES ('hku3crkncq6axmze83e2gdzj2xlsy8sd', 'N2IzMmViYzE3ZTUyYmYxOGI1MmRlNTQzM2E0NDU5NDc2MmVkNGMyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWMyOWQyMWE2ZTQwOGMwNDg3NzQ4ZGNjZWIxNWNkMjlmZGI5NjIxIn0=', '2018-05-01 17:56:13.356000');
INSERT INTO `django_session` VALUES ('ig4glb9bclhog88twq0ynxawgh4fy3mf', 'N2IzMmViYzE3ZTUyYmYxOGI1MmRlNTQzM2E0NDU5NDc2MmVkNGMyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWMyOWQyMWE2ZTQwOGMwNDg3NzQ4ZGNjZWIxNWNkMjlmZGI5NjIxIn0=', '2018-02-18 17:30:44.870000');
INSERT INTO `django_session` VALUES ('jn6h93agtv1slq3v23v6m1ri7wpolz5r', 'N2IzMmViYzE3ZTUyYmYxOGI1MmRlNTQzM2E0NDU5NDc2MmVkNGMyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWMyOWQyMWE2ZTQwOGMwNDg3NzQ4ZGNjZWIxNWNkMjlmZGI5NjIxIn0=', '2018-04-03 19:08:15.069000');
INSERT INTO `django_session` VALUES ('ksdaeyy8929hgtarw5sp7df4setxrkvx', 'N2IzMmViYzE3ZTUyYmYxOGI1MmRlNTQzM2E0NDU5NDc2MmVkNGMyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWMyOWQyMWE2ZTQwOGMwNDg3NzQ4ZGNjZWIxNWNkMjlmZGI5NjIxIn0=', '2018-03-09 17:34:33.897000');
INSERT INTO `django_session` VALUES ('oewma12s1dcynqzommo9h66vqax7renp', 'N2IzMmViYzE3ZTUyYmYxOGI1MmRlNTQzM2E0NDU5NDc2MmVkNGMyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWMyOWQyMWE2ZTQwOGMwNDg3NzQ4ZGNjZWIxNWNkMjlmZGI5NjIxIn0=', '2018-05-01 17:11:43.976000');
INSERT INTO `django_session` VALUES ('sputf6isbnmcfy3u81588dam4xyfag5j', 'N2IzMmViYzE3ZTUyYmYxOGI1MmRlNTQzM2E0NDU5NDc2MmVkNGMyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWMyOWQyMWE2ZTQwOGMwNDg3NzQ4ZGNjZWIxNWNkMjlmZGI5NjIxIn0=', '2018-01-11 16:45:20.525000');
INSERT INTO `django_session` VALUES ('srcdnn7vfuxt4xkwqxgjjqa1lxjsrxwl', 'N2IzMmViYzE3ZTUyYmYxOGI1MmRlNTQzM2E0NDU5NDc2MmVkNGMyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWMyOWQyMWE2ZTQwOGMwNDg3NzQ4ZGNjZWIxNWNkMjlmZGI5NjIxIn0=', '2018-05-09 17:46:43.112000');
INSERT INTO `django_session` VALUES ('tykskoa9mvk65jo72b0yetrqwm2i25rv', 'N2IzMmViYzE3ZTUyYmYxOGI1MmRlNTQzM2E0NDU5NDc2MmVkNGMyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWMyOWQyMWE2ZTQwOGMwNDg3NzQ4ZGNjZWIxNWNkMjlmZGI5NjIxIn0=', '2018-03-19 18:33:41.869000');
INSERT INTO `django_session` VALUES ('uogzlzd1wx4k2ixd2nnh283phsjsdxtx', 'N2IzMmViYzE3ZTUyYmYxOGI1MmRlNTQzM2E0NDU5NDc2MmVkNGMyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWMyOWQyMWE2ZTQwOGMwNDg3NzQ4ZGNjZWIxNWNkMjlmZGI5NjIxIn0=', '2018-04-22 17:53:06.955000');
INSERT INTO `django_session` VALUES ('v5h02l7n8y230wc23k2zqfia54x189gr', 'N2IzMmViYzE3ZTUyYmYxOGI1MmRlNTQzM2E0NDU5NDc2MmVkNGMyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWMyOWQyMWE2ZTQwOGMwNDg3NzQ4ZGNjZWIxNWNkMjlmZGI5NjIxIn0=', '2018-02-21 17:26:54.345000');
INSERT INTO `django_session` VALUES ('vm6goinxqkdaop78iddn12oihw6zaqwb', 'N2IzMmViYzE3ZTUyYmYxOGI1MmRlNTQzM2E0NDU5NDc2MmVkNGMyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWMyOWQyMWE2ZTQwOGMwNDg3NzQ4ZGNjZWIxNWNkMjlmZGI5NjIxIn0=', '2018-04-08 19:03:39.175000');
INSERT INTO `django_session` VALUES ('vzqzikib2b4v9u2xb1a0z26wpockme03', 'N2IzMmViYzE3ZTUyYmYxOGI1MmRlNTQzM2E0NDU5NDc2MmVkNGMyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWMyOWQyMWE2ZTQwOGMwNDg3NzQ4ZGNjZWIxNWNkMjlmZGI5NjIxIn0=', '2018-04-26 20:18:23.070000');
INSERT INTO `django_session` VALUES ('w2aecfgdj4s9d4ddu95g955u5ap47bk6', 'N2IzMmViYzE3ZTUyYmYxOGI1MmRlNTQzM2E0NDU5NDc2MmVkNGMyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWMyOWQyMWE2ZTQwOGMwNDg3NzQ4ZGNjZWIxNWNkMjlmZGI5NjIxIn0=', '2018-04-08 18:39:46.772000');

-- ----------------------------
-- Table structure for `likes_likecount`
-- ----------------------------
DROP TABLE IF EXISTS `likes_likecount`;
CREATE TABLE `likes_likecount` (
  `id` int NOT NULL AUTO_INCREMENT,
  `object_id` int unsigned NOT NULL,
  `liked_num` int NOT NULL,
  `content_type_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `likes_likecount_content_type_id_a33eb91e_fk_django_co` (`content_type_id`),
  CONSTRAINT `likes_likecount_content_type_id_a33eb91e_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `likes_likecount_chk_1` CHECK ((`object_id` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of likes_likecount
-- ----------------------------
INSERT INTO `likes_likecount` VALUES ('1', '36', '1', '8');
INSERT INTO `likes_likecount` VALUES ('2', '35', '0', '8');
INSERT INTO `likes_likecount` VALUES ('3', '34', '0', '8');
INSERT INTO `likes_likecount` VALUES ('4', '33', '0', '8');
INSERT INTO `likes_likecount` VALUES ('5', '32', '0', '8');
INSERT INTO `likes_likecount` VALUES ('6', '31', '0', '8');
INSERT INTO `likes_likecount` VALUES ('7', '30', '0', '8');
INSERT INTO `likes_likecount` VALUES ('8', '13', '1', '12');
INSERT INTO `likes_likecount` VALUES ('9', '15', '1', '12');
INSERT INTO `likes_likecount` VALUES ('10', '16', '1', '12');
INSERT INTO `likes_likecount` VALUES ('11', '10', '0', '12');
INSERT INTO `likes_likecount` VALUES ('12', '12', '0', '12');
INSERT INTO `likes_likecount` VALUES ('13', '14', '0', '12');
INSERT INTO `likes_likecount` VALUES ('14', '9', '0', '12');
INSERT INTO `likes_likecount` VALUES ('15', '8', '0', '12');
INSERT INTO `likes_likecount` VALUES ('16', '7', '0', '12');
INSERT INTO `likes_likecount` VALUES ('17', '6', '0', '12');
INSERT INTO `likes_likecount` VALUES ('18', '5', '0', '12');
INSERT INTO `likes_likecount` VALUES ('19', '4', '0', '12');
INSERT INTO `likes_likecount` VALUES ('20', '3', '0', '12');
INSERT INTO `likes_likecount` VALUES ('21', '20', '0', '12');
INSERT INTO `likes_likecount` VALUES ('22', '21', '0', '12');
INSERT INTO `likes_likecount` VALUES ('23', '22', '0', '12');
INSERT INTO `likes_likecount` VALUES ('24', '18', '0', '12');
INSERT INTO `likes_likecount` VALUES ('25', '19', '0', '12');
INSERT INTO `likes_likecount` VALUES ('26', '17', '0', '12');
INSERT INTO `likes_likecount` VALUES ('27', '23', '0', '12');
INSERT INTO `likes_likecount` VALUES ('28', '24', '0', '12');
INSERT INTO `likes_likecount` VALUES ('29', '25', '0', '12');
INSERT INTO `likes_likecount` VALUES ('30', '37', '1', '8');
INSERT INTO `likes_likecount` VALUES ('31', '39', '1', '8');
INSERT INTO `likes_likecount` VALUES ('32', '38', '0', '8');
INSERT INTO `likes_likecount` VALUES ('33', '26', '1', '12');
INSERT INTO `likes_likecount` VALUES ('34', '27', '0', '12');
INSERT INTO `likes_likecount` VALUES ('35', '31', '0', '12');
INSERT INTO `likes_likecount` VALUES ('36', '30', '0', '12');
INSERT INTO `likes_likecount` VALUES ('37', '29', '0', '12');
INSERT INTO `likes_likecount` VALUES ('38', '28', '0', '12');
INSERT INTO `likes_likecount` VALUES ('39', '36', '0', '12');
INSERT INTO `likes_likecount` VALUES ('40', '35', '0', '12');
INSERT INTO `likes_likecount` VALUES ('41', '34', '0', '12');
INSERT INTO `likes_likecount` VALUES ('42', '33', '0', '12');
INSERT INTO `likes_likecount` VALUES ('43', '32', '0', '12');
INSERT INTO `likes_likecount` VALUES ('44', '40', '1', '8');
INSERT INTO `likes_likecount` VALUES ('45', '41', '0', '12');
INSERT INTO `likes_likecount` VALUES ('46', '40', '0', '12');
INSERT INTO `likes_likecount` VALUES ('47', '39', '0', '12');
INSERT INTO `likes_likecount` VALUES ('48', '41', '0', '8');
INSERT INTO `likes_likecount` VALUES ('49', '42', '0', '8');
INSERT INTO `likes_likecount` VALUES ('50', '43', '0', '8');
INSERT INTO `likes_likecount` VALUES ('51', '44', '0', '8');
INSERT INTO `likes_likecount` VALUES ('52', '45', '0', '8');
INSERT INTO `likes_likecount` VALUES ('53', '46', '0', '8');
INSERT INTO `likes_likecount` VALUES ('54', '47', '0', '8');
INSERT INTO `likes_likecount` VALUES ('55', '48', '0', '8');
INSERT INTO `likes_likecount` VALUES ('56', '49', '0', '8');
INSERT INTO `likes_likecount` VALUES ('57', '50', '0', '8');
INSERT INTO `likes_likecount` VALUES ('58', '51', '0', '8');
INSERT INTO `likes_likecount` VALUES ('59', '38', '0', '12');
INSERT INTO `likes_likecount` VALUES ('60', '37', '0', '12');
INSERT INTO `likes_likecount` VALUES ('61', '52', '0', '8');
INSERT INTO `likes_likecount` VALUES ('62', '53', '0', '8');

-- ----------------------------
-- Table structure for `likes_likerecord`
-- ----------------------------
DROP TABLE IF EXISTS `likes_likerecord`;
CREATE TABLE `likes_likerecord` (
  `id` int NOT NULL AUTO_INCREMENT,
  `object_id` int unsigned NOT NULL,
  `liked_time` datetime(6) NOT NULL,
  `content_type_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `likes_likerecord_content_type_id_4e35de35_fk_django_co` (`content_type_id`),
  KEY `likes_likerecord_user_id_c85b88bd_fk_auth_user_id` (`user_id`),
  CONSTRAINT `likes_likerecord_content_type_id_4e35de35_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `likes_likerecord_user_id_c85b88bd_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `likes_likerecord_chk_1` CHECK ((`object_id` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of likes_likerecord
-- ----------------------------
INSERT INTO `likes_likerecord` VALUES ('11', '37', '2020-06-02 08:52:12.528000', '8', '3');
INSERT INTO `likes_likerecord` VALUES ('12', '26', '2020-06-02 21:36:09.043000', '12', '3');
INSERT INTO `likes_likerecord` VALUES ('13', '39', '2020-06-03 08:14:05.757000', '8', '4');
INSERT INTO `likes_likerecord` VALUES ('14', '40', '2020-06-03 09:52:06.561000', '8', '3');

-- ----------------------------
-- Table structure for `my_cache_table`
-- ----------------------------
DROP TABLE IF EXISTS `my_cache_table`;
CREATE TABLE `my_cache_table` (
  `cache_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `expires` datetime(6) NOT NULL,
  PRIMARY KEY (`cache_key`),
  KEY `my_cache_table_expires` (`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of my_cache_table
-- ----------------------------
INSERT INTO `my_cache_table` VALUES (':1:hot_blogs_for_7_days', 'gASVEgwAAAAAAACMFmRqYW5nby5kYi5tb2RlbHMucXVlcnmUjAhRdWVyeVNldJSTlCmBlH2UKIwFbW9kZWyUjAtibG9nLm1vZGVsc5SMBEJsb2eUk5SMA19kYpROjAZfaGludHOUfZSMBXF1ZXJ5lIwaZGphbmdvLmRiLm1vZGVscy5zcWwucXVlcnmUjAVRdWVyeZSTlCmBlH2UKIwRX2NvbnN0cnVjdG9yX2FyZ3OUaAiFlH2UhpRoBWgIjA5hbGlhc19yZWZjb3VudJR9lCiMCWJsb2dfYmxvZ5RLBIwacmVhZF9zdGF0aXN0aWNzX3JlYWRkZXRhaWyUSwN1jAlhbGlhc19tYXCUfZQoaBiMI2RqYW5nby5kYi5tb2RlbHMuc3FsLmRhdGFzdHJ1Y3R1cmVzlIwJQmFzZVRhYmxllJOUKYGUfZQojAp0YWJsZV9uYW1llGgYjAt0YWJsZV9hbGlhc5RoGHViaBloHIwESm9pbpSTlCmBlH2UKGghaBmMDHBhcmVudF9hbGlhc5RoGGgiaBmMCWpvaW5fdHlwZZSMCklOTkVSIEpPSU6UjAlqb2luX2NvbHOUjAJpZJSMCW9iamVjdF9pZJSGlIWUjApqb2luX2ZpZWxklIwiZGphbmdvLmNvbnRyaWIuY29udGVudHR5cGVzLmZpZWxkc5SMCkdlbmVyaWNSZWyUk5QpgZR9lCiMBWZpZWxklIwXZGphbmdvLmRiLm1vZGVscy5maWVsZHOUjAtfbG9hZF9maWVsZJSTlIwEYmxvZ5RoB4wMcmVhZF9kZXRhaWxzlIeUUpRoBYwWcmVhZF9zdGF0aXN0aWNzLm1vZGVsc5SMClJlYWREZXRhaWyUk5SMDHJlbGF0ZWRfbmFtZZSMASuUjBJyZWxhdGVkX3F1ZXJ5X25hbWWUTowQbGltaXRfY2hvaWNlc190b5R9lIwLcGFyZW50X2xpbmuUiYwJb25fZGVsZXRllIwZZGphbmdvLmRiLm1vZGVscy5kZWxldGlvbpSMCkRPX05PVEhJTkeUk5SMC3N5bW1ldHJpY2FslImMCG11bHRpcGxllIh1YowIbnVsbGFibGWUiIwRZmlsdGVyZWRfcmVsYXRpb26UTnVidYwQZXh0ZXJuYWxfYWxpYXNlc5R9lIwJdGFibGVfbWFwlH2UKGgYXZRoGGFoGV2UaBlhdYwMZGVmYXVsdF9jb2xzlImMEGRlZmF1bHRfb3JkZXJpbmeUiIwRc3RhbmRhcmRfb3JkZXJpbmeUiIwMdXNlZF9hbGlhc2VzlI+UjBBmaWx0ZXJfaXNfc3RpY2t5lImMCHN1YnF1ZXJ5lImMBnNlbGVjdJSMHGRqYW5nby5kYi5tb2RlbHMuZXhwcmVzc2lvbnOUjANDb2yUk5QpgZR9lChoEmgYaDhoOWgHaCuHlFKUhpR9lIaUjAxvdXRwdXRfZmllbGSUaGKMBWFsaWFzlGgYjAZ0YXJnZXSUaGKMCGlkZW50aXR5lChoXmhnaBiGlGhojAlibG9nLkJsb2eUaCuGlIaUaGZOhpR0lHViaF4pgZR9lChoEmgYaDhoOWgHjAV0aXRsZZSHlFKUhpR9lIaUaGZodGhnaBhoaGh0aGkoaF5oZ2gYhpRoaIwJYmxvZy5CbG9nlGhyhpSGlGhmToaUdJR1YoaUjAV3aGVyZZSMGmRqYW5nby5kYi5tb2RlbHMuc3FsLndoZXJllIwJV2hlcmVOb2RllJOUKYGUfZQojAhjaGlsZHJlbpRdlCiMGGRqYW5nby5kYi5tb2RlbHMubG9va3Vwc5SMEkdyZWF0ZXJUaGFuT3JFcXVhbJSTlCmBlH2UKIwDbGhzlGheKYGUfZQoaBJoGWg4jA9yZWFkX3N0YXRpc3RpY3OUaD6MBGRhdGWUh5RSlIaUfZSGlGhmaJJoZ2gZaGhokowSY29udGFpbnNfYWdncmVnYXRllIl1YowDcmhzlIwIZGF0ZXRpbWWUjARkYXRllJOUQwQH5AUclIWUUpSMFGJpbGF0ZXJhbF90cmFuc2Zvcm1zlF2UaJaJdWJoh4wPTGVzc1RoYW5PckVxdWFslJOUKYGUfZQoaIxojWiXaJpDBAfkBgOUhZRSlGieXZRolol1YmWMCWNvbm5lY3RvcpSMA0FORJSMB25lZ2F0ZWSUiWiWiXVijAt3aGVyZV9jbGFzc5RogowIZ3JvdXBfYnmUaF9ocIaUjAhvcmRlcl9ieZSMDS1yZWFkX251bV9zdW2UhZSMCGxvd19tYXJrlEsAjAloaWdoX21hcmuUSweMCGRpc3RpbmN0lImMD2Rpc3RpbmN0X2ZpZWxkc5QpjBFzZWxlY3RfZm9yX3VwZGF0ZZSJjBhzZWxlY3RfZm9yX3VwZGF0ZV9ub3dhaXSUiYwdc2VsZWN0X2Zvcl91cGRhdGVfc2tpcF9sb2NrZWSUiYwUc2VsZWN0X2Zvcl91cGRhdGVfb2aUKYwOc2VsZWN0X3JlbGF0ZWSUiYwJbWF4X2RlcHRolEsFjA12YWx1ZXNfc2VsZWN0lGgraHKGlIwLYW5ub3RhdGlvbnOUfZSMDHJlYWRfbnVtX3N1bZSMG2RqYW5nby5kYi5tb2RlbHMuYWdncmVnYXRlc5SMA1N1bZSTlCmBlH2UKGgSjBZyZWFkX2RldGFpbHNfX3JlYWRfbnVtlIWUfZSGlGiziYwGZmlsdGVylE6MEnNvdXJjZV9leHByZXNzaW9uc5RdlGheKYGUfZQoaBJoGWg4aI9oPowIcmVhZF9udW2Uh5RSlIaUfZSGlGhmaNBoZ2gZaGho0IwVX291dHB1dF9maWVsZF9vcl9ub25llGjQaJaJdWJhjAVleHRyYZR9lIwKaXNfc3VtbWFyeZSJaGZo0GhpKGjCjAtleHByZXNzaW9uc5RoxYWUhpRos4mGlGjJToaUaNUphpR0lHVic4wWYW5ub3RhdGlvbl9zZWxlY3RfbWFza5SPlChov5CMGF9hbm5vdGF0aW9uX3NlbGVjdF9jYWNoZZR9lGi/aMNzjApjb21iaW5hdG9ylE6MDmNvbWJpbmF0b3JfYWxslImMEGNvbWJpbmVkX3F1ZXJpZXOUKWjVfZSMEWV4dHJhX3NlbGVjdF9tYXNrlI+UjBNfZXh0cmFfc2VsZWN0X2NhY2hllE6MDGV4dHJhX3RhYmxlc5QpjA5leHRyYV9vcmRlcl9ieZQpjBBkZWZlcnJlZF9sb2FkaW5nlCiRlIiGlIwTX2ZpbHRlcmVkX3JlbGF0aW9uc5R9lIwNZXhwbGFpbl9xdWVyeZSJjA5leHBsYWluX2Zvcm1hdJROjA9leHBsYWluX29wdGlvbnOUfZSMDV9sb29rdXBfam9pbnOUXZQoaBhoGWWMCmJhc2VfdGFibGWUaBh1YowNX3Jlc3VsdF9jYWNoZZRdlCh9lChoK0soaHKMKUNvbnRlbnRUeXBlIG1hdGNoaW5nIHF1ZXJ5IGRvZXMgbm90IGV4aXN0lGi/SwF1fZQoaCtLLGhyjCbljZrlrqLnvZHnq5nkuYvigJTigJREamFuZ28gRm9ybeihqOWNlZRov0sBdX2UKGgrSy9ocowa5ZyoZGphbmdv5Lit6YWN572uTWFya2Rvd26UaL9LAXV9lChoK0sxaHKME+WbvueJh+S4iuS8oOa1i+ivlTGUaL9LAXV9lChoK0syaHKME+WbvueJh+S4iuS8oOa1i+ivlTKUaL9LAXV9lChoK0szaHKMJOeItuexu+WSjOWtkOexu+S4jeWQjOWIneWni+WMluaWueazlZRov0sBdX2UKGgrSzVocowb54Ot6Zeo5Y2a5a6i5o6S6KGM55qE6Zeu6aKYlGi/SwF1ZYwOX3N0aWNreV9maWx0ZXKUiYwKX2Zvcl93cml0ZZSJjBlfcHJlZmV0Y2hfcmVsYXRlZF9sb29rdXBzlCmMDl9wcmVmZXRjaF9kb25llImMFl9rbm93bl9yZWxhdGVkX29iamVjdHOUfZSMD19pdGVyYWJsZV9jbGFzc5RoAIwOVmFsdWVzSXRlcmFibGWUk5SMB19maWVsZHOUaCtocoaUjA9fZGphbmdvX3ZlcnNpb26UjAUzLjAuM5R1Yi4=', '2020-06-04 00:15:41.000000');

-- ----------------------------
-- Table structure for `read_statistics_readdetail`
-- ----------------------------
DROP TABLE IF EXISTS `read_statistics_readdetail`;
CREATE TABLE `read_statistics_readdetail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `read_num` int NOT NULL,
  `object_id` int unsigned NOT NULL,
  `content_type_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `read_statistics_read_content_type_id_589c7d92_fk_django_co` (`content_type_id`),
  CONSTRAINT `read_statistics_read_content_type_id_589c7d92_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `read_statistics_readdetail_chk_1` CHECK ((`object_id` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of read_statistics_readdetail
-- ----------------------------
INSERT INTO `read_statistics_readdetail` VALUES ('21', '2020-06-03', '2', '40', '8');
INSERT INTO `read_statistics_readdetail` VALUES ('25', '2020-06-03', '1', '44', '8');
INSERT INTO `read_statistics_readdetail` VALUES ('28', '2020-06-03', '1', '47', '8');
INSERT INTO `read_statistics_readdetail` VALUES ('30', '2020-06-03', '1', '49', '8');
INSERT INTO `read_statistics_readdetail` VALUES ('31', '2020-06-03', '1', '50', '8');
INSERT INTO `read_statistics_readdetail` VALUES ('32', '2020-06-03', '1', '51', '8');
INSERT INTO `read_statistics_readdetail` VALUES ('33', '2020-06-03', '1', '53', '8');

-- ----------------------------
-- Table structure for `read_statistics_readnum`
-- ----------------------------
DROP TABLE IF EXISTS `read_statistics_readnum`;
CREATE TABLE `read_statistics_readnum` (
  `id` int NOT NULL AUTO_INCREMENT,
  `read_num` int NOT NULL,
  `object_id` int unsigned NOT NULL,
  `content_type_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `read_statistics_read_content_type_id_560f0f39_fk_django_co` (`content_type_id`),
  CONSTRAINT `read_statistics_read_content_type_id_560f0f39_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `read_statistics_readnum_chk_1` CHECK ((`object_id` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of read_statistics_readnum
-- ----------------------------
INSERT INTO `read_statistics_readnum` VALUES ('1', '24', '36', '8');
INSERT INTO `read_statistics_readnum` VALUES ('2', '2', '34', '8');
INSERT INTO `read_statistics_readnum` VALUES ('3', '1', '20', '8');
INSERT INTO `read_statistics_readnum` VALUES ('4', '7', '35', '8');
INSERT INTO `read_statistics_readnum` VALUES ('5', '1', '33', '8');
INSERT INTO `read_statistics_readnum` VALUES ('6', '1', '32', '8');
INSERT INTO `read_statistics_readnum` VALUES ('7', '1', '31', '8');
INSERT INTO `read_statistics_readnum` VALUES ('8', '1', '39', '8');
INSERT INTO `read_statistics_readnum` VALUES ('9', '1', '38', '8');
INSERT INTO `read_statistics_readnum` VALUES ('10', '3', '37', '8');
INSERT INTO `read_statistics_readnum` VALUES ('11', '2', '40', '8');
INSERT INTO `read_statistics_readnum` VALUES ('12', '1', '41', '8');
INSERT INTO `read_statistics_readnum` VALUES ('13', '1', '42', '8');
INSERT INTO `read_statistics_readnum` VALUES ('14', '1', '43', '8');
INSERT INTO `read_statistics_readnum` VALUES ('15', '1', '44', '8');
INSERT INTO `read_statistics_readnum` VALUES ('16', '1', '45', '8');
INSERT INTO `read_statistics_readnum` VALUES ('17', '1', '46', '8');
INSERT INTO `read_statistics_readnum` VALUES ('18', '1', '47', '8');
INSERT INTO `read_statistics_readnum` VALUES ('19', '1', '48', '8');
INSERT INTO `read_statistics_readnum` VALUES ('20', '1', '49', '8');
INSERT INTO `read_statistics_readnum` VALUES ('21', '1', '50', '8');
INSERT INTO `read_statistics_readnum` VALUES ('22', '1', '51', '8');
INSERT INTO `read_statistics_readnum` VALUES ('23', '1', '53', '8');

-- ----------------------------
-- Table structure for `user_profile`
-- ----------------------------
DROP TABLE IF EXISTS `user_profile`;
CREATE TABLE `user_profile` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nickname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `user_profile_user_id_8fdce8e2_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user_profile
-- ----------------------------
INSERT INTO `user_profile` VALUES ('1', '天天123', '4');
INSERT INTO `user_profile` VALUES ('2', '天健寺', '3');

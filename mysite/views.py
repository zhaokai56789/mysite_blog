import datetime
from django.shortcuts import render, redirect
from django.contrib.contenttypes.models import ContentType
from django.utils import timezone
from django.db.models import Sum
from django.core.cache import cache
from django.urls import reverse
from read_statistics.utils import get_seven_days_read_data, get_today_hot_data, get_yesterday_hot_data
from blog.models import Blog
from blog.views import blog_list
from read_statistics.models import ReadNum




# def get_7_days_hot_blogs():
#     today = timezone.now().date()
#     date = today - datetime.timedelta(days=6)
#     blogs = Blog.objects \
#         .filter(read_details__date__lte=today, read_details__date__gte=date) \
#         .values('id', 'title') \
#         .annotate(read_num_sum=Sum('read_details__read_num')) \
#         .order_by('-read_num_sum')
#     return blogs[:7]

# def get_max_read_num():
#     blogs = Blog.objects \
#         .filter(read_details__read_num__gte=0) \
#         .values('id', 'title') \
#         .annotate(read_num_sum=Sum('read_details__read_num')) \
#         .order_by('-read_num_sum')
#     return blogs[:6]


def home(request):
    blog_content_type = ContentType.objects.get_for_model(Blog)
    # dates, read_nums = get_seven_days_read_data(blog_content_type)
    #
    # # 获取7天热门博客的缓存数据
    # hot_blogs_for_7_days = cache.get('hot_blogs_for_7_days')
    # if hot_blogs_for_7_days is None:
    #     hot_blogs_for_7_days = get_7_days_hot_blogs()
    #     cache.set('hot_blogs_for_7_days', hot_blogs_for_7_days, 3600)

    context = {}
    # context['dates'] = dates
    # context['read_nums'] = read_nums
    context['today_hot_data'] = get_today_hot_data(blog_content_type)
    context['yesterday_hot_data'] = get_yesterday_hot_data(blog_content_type)
    # context['get_max_read_num'] = get_max_read_num
    # context['hot_blogs_for_7_days'] = hot_blogs_for_7_days
    return render(request, 'home.html', context)

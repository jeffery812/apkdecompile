.class public Lbbc/mobile/news/service/NotificationFactory;
.super Ljava/lang/Object;
.source "NotificationFactory.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# static fields
.field public static final NOTIFY_AUDIO_SERVICE:I = 0x4

.field public static final NOTIFY_BREAKING_NEWS:I = 0x5

.field public static final NOTIFY_DOWNLOAD:I = 0x3

.field public static final NOTIFY_NEWLIST:I = 0x2

.field public static final NOTIFY_UPDATE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearAppUpdate(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 37
    invoke-static {p0}, Lbbc/mobile/news/service/NotificationFactory;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 38
    return-void
.end method

.method public static clearDownload(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 158
    invoke-static {p0}, Lbbc/mobile/news/service/NotificationFactory;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 159
    return-void
.end method

.method public static clearListUpdate(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 42
    invoke-static {p0}, Lbbc/mobile/news/service/NotificationFactory;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 43
    return-void
.end method

.method public static final dispatchPushNotification(Landroid/content/Context;Lio/boxcar/push/model/BXCNotification;)V
    .locals 9
    .parameter "context"
    .parameter "bxcNotification"

    .prologue
    const/16 v8, 0x1f4

    const/4 v7, 0x0

    .line 121
    new-instance v2, Lbbc/mobile/news/push/PushNotification;

    invoke-direct {v2, p1}, Lbbc/mobile/news/push/PushNotification;-><init>(Lio/boxcar/push/model/BXCNotification;)V

    .line 122
    .local v2, notification:Lbbc/mobile/news/push/PushNotification;
    sget v5, Lbbc/mobile/news/R$string;->breaking_news_notification_title:I

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 123
    .local v4, title:Ljava/lang/String;
    invoke-virtual {v2}, Lbbc/mobile/news/push/PushNotification;->getArticleTitle()Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, summary:Ljava/lang/String;
    new-instance v5, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v5, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 126
    invoke-static {p0, p1}, Lbbc/mobile/news/util/IntentFactory;->getHomeScreenPendingIntent(Landroid/content/Context;Lio/boxcar/push/model/BXCNotification;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 127
    sget v6, Lbbc/mobile/news/R$drawable;->ic_stat_notify:I

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 128
    invoke-virtual {v5, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 129
    invoke-virtual {v5, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 130
    invoke-virtual {v5, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 131
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 132
    invoke-virtual {v5, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 133
    invoke-virtual {v5, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 134
    invoke-virtual {p1}, Lio/boxcar/push/model/BXCNotification;->getDate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 135
    const/high16 v6, -0x1

    invoke-virtual {v5, v6, v8, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 143
    .local v1, builder:Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-static {p0}, Lbbc/mobile/news/util/GlobalSettings;->isPushSoundEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 144
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "android.resource://"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lbbc/mobile/news/R$raw;->breaking_news:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 144
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 149
    :cond_0
    new-instance v5, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v5, v1}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 150
    invoke-virtual {v5, v4}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v5

    .line 151
    invoke-virtual {v5, v3}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v0

    .line 153
    .local v0, bigTextRebuilder:Landroid/support/v4/app/NotificationCompat$BigTextStyle;
    invoke-static {p0}, Lbbc/mobile/news/service/NotificationFactory;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v5

    invoke-virtual {v2}, Lbbc/mobile/news/push/PushNotification;->getPushId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 154
    return-void
.end method

.method public static dispatchUpdateComplete(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 72
    invoke-static {}, Lbbc/mobile/news/util/IntentFactory;->getHomeScreenIntent()Landroid/content/Intent;

    move-result-object v0

    .line 73
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v6, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 74
    .local v2, pendingIntent:Landroid/app/PendingIntent;
    sget v5, Lbbc/mobile/news/R$string;->notify_news_updated_title:I

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 75
    .local v4, title:Ljava/lang/String;
    sget v5, Lbbc/mobile/news/R$string;->notify_news_updated_text:I

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, text:Ljava/lang/String;
    new-instance v5, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v5, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 78
    invoke-virtual {v5, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 79
    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 80
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 81
    sget v6, Lbbc/mobile/news/R$drawable;->ic_stat_notify:I

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 82
    invoke-virtual {v5, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 83
    invoke-virtual {v5, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 84
    invoke-virtual {v5, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 85
    invoke-virtual {v5, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 86
    invoke-virtual {v5}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 88
    .local v1, notifation:Landroid/app/Notification;
    invoke-static {p0}, Lbbc/mobile/news/service/NotificationFactory;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 89
    return-void
.end method

.method public static dispatchUpdateStarted(Landroid/content/Context;I)Landroid/app/Notification;
    .locals 8
    .parameter "context"
    .parameter "noOfFeeds"

    .prologue
    const/4 v7, 0x0

    .line 47
    invoke-static {}, Lbbc/mobile/news/util/IntentFactory;->getHomeScreenIntent()Landroid/content/Intent;

    move-result-object v0

    .line 48
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v7, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 50
    .local v2, pendingIntent:Landroid/app/PendingIntent;
    sget v5, Lbbc/mobile/news/R$string;->notify_news_updating:I

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, title:Ljava/lang/String;
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    sget v6, Lbbc/mobile/news/R$layout;->notify_progress_layout:I

    invoke-direct {v4, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 53
    .local v4, views:Landroid/widget/RemoteViews;
    sget v5, Lbbc/mobile/news/R$id;->news_progress:I

    invoke-virtual {v4, v5, p1, v7, v7}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 55
    new-instance v5, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v5, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 56
    invoke-virtual {v5, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 57
    invoke-virtual {v5, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 58
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 59
    invoke-virtual {v5, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 60
    sget v6, Lbbc/mobile/news/R$drawable;->ic_stat_notify:I

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 61
    invoke-virtual {v5, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 62
    invoke-virtual {v5, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 63
    invoke-virtual {v5}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 65
    .local v1, notification:Landroid/app/Notification;
    invoke-static {p0}, Lbbc/mobile/news/service/NotificationFactory;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 67
    return-object v1
.end method

.method public static final getAudioNotification(Landroid/content/Context;Lbbc/mobile/news/model/Article;)Landroid/app/Notification;
    .locals 6
    .parameter "context"
    .parameter "article"

    .prologue
    const/4 v4, 0x0

    .line 93
    const/4 v1, 0x0

    .line 94
    .local v1, pendingIntent:Landroid/app/PendingIntent;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lbbc/mobile/news/model/Article;->getCategory()Lbbc/mobile/news/model/Category;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 95
    invoke-virtual {p1}, Lbbc/mobile/news/model/Article;->getCategory()Lbbc/mobile/news/model/Category;

    move-result-object v2

    invoke-virtual {v2}, Lbbc/mobile/news/model/Category;->getId()I

    move-result v2

    const/16 v3, 0x12

    if-ne v2, v3, :cond_0

    .line 98
    invoke-virtual {p1}, Lbbc/mobile/news/model/Article;->getCategoryName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lbbc/mobile/news/model/Article;->getId()Ljava/lang/String;

    move-result-object v3

    .line 97
    invoke-static {p0, v2, v3}, Lbbc/mobile/news/util/IntentFactory;->getHomeScreenPendingIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 104
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lbbc/mobile/news/model/Article;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, content:Ljava/lang/String;
    :goto_1
    new-instance v2, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v2, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 106
    invoke-virtual {v2, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 107
    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 108
    sget v3, Lbbc/mobile/news/R$drawable;->ic_stat_notify:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 109
    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 110
    sget v3, Lbbc/mobile/news/R$string;->av_notification_title:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 111
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 112
    invoke-virtual {v2, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 113
    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 115
    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 105
    return-object v2

    .line 101
    .end local v0           #content:Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Lbbc/mobile/news/util/IntentFactory;->getHomeScreenPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    goto :goto_0

    .line 104
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 33
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0
.end method

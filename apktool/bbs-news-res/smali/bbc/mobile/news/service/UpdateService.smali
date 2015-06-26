.class public Lbbc/mobile/news/service/UpdateService;
.super Lbbc/mobile/news/service/WakefullIntentService;
.source "UpdateService.java"

# interfaces
.implements Lbbc/mobile/news/model/AtomCallback;
.implements Lbbc/mobile/news/model/FeedManagerCallback;
.implements Lbbc/mobile/news/model/ConfigCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbbc/mobile/news/service/UpdateService$OnProgressListener;
    }
.end annotation


# static fields
.field public static final DBL_KEY_UPDATE_CACHE:Ljava/lang/String; = "BdlUpdateCache"

.field public static final INTERVAL_DAY:J = 0x5265c00L

.field public static final INTERVAL_MINUTE:J = 0xea60L

.field private static IS_SERVICE_RUNNING:Z = false

.field private static final TAG:Ljava/lang/String; = "UpdateService"

.field public static final WORK_ALARM_RECEIVED:I = 0x2

.field public static final WORK_BOOT_RECEIVED:I = 0x1

.field public static final WORK_UPDATE_CACHE:I = 0x4

.field public static final WORK_UPDATE_PROGRESS:I = 0x3


# instance fields
.field private mConfig:Lbbc/mobile/news/model/Config;

.field private mFeedManager:Lbbc/mobile/news/feed/FeedManager;

.field protected mHandler:Landroid/os/Handler;

.field private mIsNotificationsEnabled:Z

.field private mReceivedFeeds:I

.field private mTotalFeedCount:I

.field private mUpdateProgress:Lbbc/mobile/news/service/UpdateService$OnProgressListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput-boolean v0, Lbbc/mobile/news/service/UpdateService;->IS_SERVICE_RUNNING:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 58
    const-string v0, "UpdateService"

    invoke-direct {p0, v0}, Lbbc/mobile/news/service/WakefullIntentService;-><init>(Ljava/lang/String;)V

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lbbc/mobile/news/service/UpdateService;->mTotalFeedCount:I

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lbbc/mobile/news/service/UpdateService;->mReceivedFeeds:I

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbbc/mobile/news/service/UpdateService;->mIsNotificationsEnabled:Z

    .line 311
    new-instance v0, Lbbc/mobile/news/service/UpdateService$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lbbc/mobile/news/service/UpdateService$1;-><init>(Lbbc/mobile/news/service/UpdateService;Landroid/os/Looper;)V

    iput-object v0, p0, Lbbc/mobile/news/service/UpdateService;->mHandler:Landroid/os/Handler;

    .line 376
    new-instance v0, Lbbc/mobile/news/service/UpdateService$2;

    invoke-direct {v0, p0}, Lbbc/mobile/news/service/UpdateService$2;-><init>(Lbbc/mobile/news/service/UpdateService;)V

    iput-object v0, p0, Lbbc/mobile/news/service/UpdateService;->mUpdateProgress:Lbbc/mobile/news/service/UpdateService$OnProgressListener;

    .line 59
    return-void
.end method

.method static synthetic access$0(Lbbc/mobile/news/service/UpdateService;)Z
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-boolean v0, p0, Lbbc/mobile/news/service/UpdateService;->mIsNotificationsEnabled:Z

    return v0
.end method

.method public static cancelAlarms(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 3
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 167
    .local v0, alarmManager:Landroid/app/AlarmManager;
    invoke-static {p0, p1}, Lbbc/mobile/news/service/UpdateService;->getAlarmPendingIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 168
    .local v1, pendingIntent:Landroid/app/PendingIntent;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 169
    return-void
.end method

.method public static createStartIntent(Landroid/content/Context;Ljava/lang/Class;I)Landroid/content/Intent;
    .locals 2
    .parameter "context"
    .parameter
    .parameter "workId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;I)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, service:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "BdlUpdateCache"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private getAdFlagpoleFeed()Lbbc/mobile/news/model/Feed;
    .locals 4

    .prologue
    .line 249
    new-instance v0, Lbbc/mobile/news/model/Feed;

    const-string v1, "text"

    const/4 v2, -0x7

    sget v3, Lbbc/mobile/news/R$string;->add_flagpole_url:I

    invoke-virtual {p0, v3}, Lbbc/mobile/news/service/UpdateService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lbbc/mobile/news/model/Feed;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method public static getAlarmPendingIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/app/PendingIntent;
    .locals 2
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)",
            "Landroid/app/PendingIntent;"
        }
    .end annotation

    .prologue
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 174
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private onClearCache(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 186
    return-void
.end method

.method private onUpdateFeeds(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 180
    iget-object v0, p0, Lbbc/mobile/news/service/UpdateService;->mFeedManager:Lbbc/mobile/news/feed/FeedManager;

    if-eqz v0, :cond_0

    .line 181
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lbbc/mobile/news/service/UpdateService;->requestBootstrapConfig(I)V

    .line 182
    :cond_0
    return-void
.end method

.method private requestBootstrapConfig(I)V
    .locals 3
    .parameter "readStrategy"

    .prologue
    .line 190
    iget-object v0, p0, Lbbc/mobile/news/service/UpdateService;->mFeedManager:Lbbc/mobile/news/feed/FeedManager;

    invoke-virtual {v0}, Lbbc/mobile/news/feed/FeedManager;->clear()V

    .line 191
    iget-object v0, p0, Lbbc/mobile/news/service/UpdateService;->mFeedManager:Lbbc/mobile/news/feed/FeedManager;

    iget-object v1, p0, Lbbc/mobile/news/service/UpdateService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, p1, v2}, Lbbc/mobile/news/feed/FeedManager;->addConfigFeed(Landroid/content/Context;Landroid/os/Handler;II)V

    .line 192
    iget-object v0, p0, Lbbc/mobile/news/service/UpdateService;->mFeedManager:Lbbc/mobile/news/feed/FeedManager;

    invoke-virtual {v0}, Lbbc/mobile/news/feed/FeedManager;->fetch()V

    .line 193
    return-void
.end method

.method public static rescheduleUpdateService(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 7
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {p0}, Lbbc/mobile/news/util/GlobalSettings;->getAlarmIntervalMillis(Landroid/content/Context;)J

    move-result-wide v4

    .line 154
    .local v4, alarmInterval:J
    invoke-static {p0}, Lbbc/mobile/news/util/GlobalSettings;->getAlarmTimeMillis(Landroid/content/Context;)J

    move-result-wide v2

    .line 156
    .local v2, alarmTime:J
    const-string v0, "UpdateService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "rescheduleUpdateService() alarmInterval:"

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " alarmTime:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " class:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-lez v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    .line 159
    invoke-static/range {v0 .. v5}, Lbbc/mobile/news/service/UpdateService;->scheduleUpdateService(Landroid/content/Context;Ljava/lang/Class;JJ)V

    .line 160
    const-string v0, "UpdateService"

    const-string v1, "Update service schedualed from boot receiver"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_0
    return-void
.end method

.method public static scheduleUpdateService(Landroid/content/Context;Ljava/lang/Class;JJ)V
    .locals 12
    .parameter "context"
    .parameter
    .parameter "scheduleTime"
    .parameter "updateInterval"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;JJ)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 128
    .local v0, alarmManager:Landroid/app/AlarmManager;
    invoke-static {p0, p1}, Lbbc/mobile/news/service/UpdateService;->getAlarmPendingIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/app/PendingIntent;

    move-result-object v6

    .line 129
    .local v6, pendingIntent:Landroid/app/PendingIntent;
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 131
    const-wide/16 v2, 0x0

    cmp-long v1, p4, v2

    if-lez v1, :cond_1

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 134
    .local v8, currentTime:J
    sub-long v2, v8, p2

    rem-long v2, v2, p4

    sub-long v10, p4, v2

    .line 135
    .local v10, rollOver:J
    const-wide/16 v2, 0x0

    cmp-long v1, v10, v2

    if-nez v1, :cond_0

    .line 136
    move-wide/from16 v10, p4

    .line 138
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 139
    .local v7, calendar:Ljava/util/Calendar;
    add-long v2, v8, v10

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 141
    const-string v1, "UpdateService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "scheduleUpdateService() updating alarm to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v4, 0x3e8

    div-long v4, p4, v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " seconds. Set for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 142
    invoke-static {p0}, Landroid/text/format/DateFormat;->getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 141
    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const/4 v1, 0x0

    add-long v2, v8, v10

    move-wide/from16 v4, p4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 149
    .end local v7           #calendar:Ljava/util/Calendar;
    .end local v8           #currentTime:J
    .end local v10           #rollOver:J
    :goto_0
    return-void

    .line 146
    :cond_1
    const-string v1, "UpdateService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "scheduleUpdateService() ERROR - updateInterval was:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v4, 0x3e8

    div-long v4, p4, v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " seconds."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v1, "UpdateService"

    const-string v2, "scheduleUpdateService() update not schedualed seconds."

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public finishService()V
    .locals 2

    .prologue
    .line 370
    const-string v0, "UpdateService"

    const-string v1, "finishService()..."

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const/4 v0, 0x0

    sput-boolean v0, Lbbc/mobile/news/service/UpdateService;->IS_SERVICE_RUNNING:Z

    .line 373
    invoke-virtual {p0}, Lbbc/mobile/news/service/UpdateService;->stopSelf()V

    .line 374
    return-void
.end method

.method public onAtomFailed(Lbbc/mobile/news/model/Feed;II)V
    .locals 3
    .parameter "feed"
    .parameter "strategy"
    .parameter "requestMethod"

    .prologue
    .line 274
    iget-object v0, p0, Lbbc/mobile/news/service/UpdateService;->mUpdateProgress:Lbbc/mobile/news/service/UpdateService$OnProgressListener;

    iget v1, p0, Lbbc/mobile/news/service/UpdateService;->mTotalFeedCount:I

    iget v2, p0, Lbbc/mobile/news/service/UpdateService;->mReceivedFeeds:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lbbc/mobile/news/service/UpdateService;->mReceivedFeeds:I

    invoke-interface {v0, v1, v2}, Lbbc/mobile/news/service/UpdateService$OnProgressListener;->onProgress(II)V

    .line 275
    return-void
.end method

.method public onAtomSuccess(Lbbc/mobile/news/model/Category;II)V
    .locals 3
    .parameter "category"
    .parameter "strategy"
    .parameter "requestMethod"

    .prologue
    .line 269
    iget-object v0, p0, Lbbc/mobile/news/service/UpdateService;->mUpdateProgress:Lbbc/mobile/news/service/UpdateService$OnProgressListener;

    iget v1, p0, Lbbc/mobile/news/service/UpdateService;->mTotalFeedCount:I

    iget v2, p0, Lbbc/mobile/news/service/UpdateService;->mReceivedFeeds:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lbbc/mobile/news/service/UpdateService;->mReceivedFeeds:I

    invoke-interface {v0, v1, v2}, Lbbc/mobile/news/service/UpdateService$OnProgressListener;->onProgress(II)V

    .line 270
    return-void
.end method

.method public onAvDialogFailed()V
    .locals 3

    .prologue
    .line 304
    iget-object v0, p0, Lbbc/mobile/news/service/UpdateService;->mUpdateProgress:Lbbc/mobile/news/service/UpdateService$OnProgressListener;

    iget v1, p0, Lbbc/mobile/news/service/UpdateService;->mTotalFeedCount:I

    iget v2, p0, Lbbc/mobile/news/service/UpdateService;->mReceivedFeeds:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lbbc/mobile/news/service/UpdateService;->mReceivedFeeds:I

    invoke-interface {v0, v1, v2}, Lbbc/mobile/news/service/UpdateService$OnProgressListener;->onProgress(II)V

    .line 305
    return-void
.end method

.method public onAvDialogSuccess(Lbbc/mobile/news/model/AVCategory;II)V
    .locals 3
    .parameter "avc"
    .parameter "strategy"
    .parameter "requestMethod"

    .prologue
    .line 299
    iget-object v0, p0, Lbbc/mobile/news/service/UpdateService;->mUpdateProgress:Lbbc/mobile/news/service/UpdateService$OnProgressListener;

    iget v1, p0, Lbbc/mobile/news/service/UpdateService;->mTotalFeedCount:I

    iget v2, p0, Lbbc/mobile/news/service/UpdateService;->mReceivedFeeds:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lbbc/mobile/news/service/UpdateService;->mReceivedFeeds:I

    invoke-interface {v0, v1, v2}, Lbbc/mobile/news/service/UpdateService$OnProgressListener;->onProgress(II)V

    .line 300
    return-void
.end method

.method public onBootReceived(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 96
    const-string v0, "UpdateService"

    const-string v1, "handle BootReceived"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lbbc/mobile/news/service/UpdateService;->finishService()V

    .line 99
    return-void
.end method

.method public onConfigFailed(Lbbc/mobile/news/model/Config;II)V
    .locals 2
    .parameter "config"
    .parameter "strategy"
    .parameter "requestMethod"

    .prologue
    .line 263
    const-string v0, "UpdateService"

    const-string v1, "BCC News update service failed to receive config file... finishing."

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0}, Lbbc/mobile/news/service/UpdateService;->finishService()V

    .line 265
    return-void
.end method

.method public onConfigSuccess(Lbbc/mobile/news/model/Config;II)V
    .locals 1
    .parameter "config"
    .parameter "strategy"
    .parameter "requestMethod"

    .prologue
    .line 255
    iput-object p1, p0, Lbbc/mobile/news/service/UpdateService;->mConfig:Lbbc/mobile/news/model/Config;

    .line 256
    const/4 v0, 0x0

    iput v0, p0, Lbbc/mobile/news/service/UpdateService;->mTotalFeedCount:I

    .line 257
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lbbc/mobile/news/service/UpdateService;->requestFeeds(I)V

    .line 258
    return-void
.end method

.method public onPolicyFailed()V
    .locals 0

    .prologue
    .line 402
    return-void
.end method

.method public onPolicySuccess(Lbbc/mobile/news/model/Policy;II)V
    .locals 0
    .parameter "policy"
    .parameter "strategy"
    .parameter "requestMethod"

    .prologue
    .line 397
    return-void
.end method

.method public onTextFailed()V
    .locals 3

    .prologue
    .line 294
    iget-object v0, p0, Lbbc/mobile/news/service/UpdateService;->mUpdateProgress:Lbbc/mobile/news/service/UpdateService$OnProgressListener;

    iget v1, p0, Lbbc/mobile/news/service/UpdateService;->mTotalFeedCount:I

    iget v2, p0, Lbbc/mobile/news/service/UpdateService;->mReceivedFeeds:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lbbc/mobile/news/service/UpdateService;->mReceivedFeeds:I

    invoke-interface {v0, v1, v2}, Lbbc/mobile/news/service/UpdateService$OnProgressListener;->onProgress(II)V

    .line 295
    return-void
.end method

.method public onTextSuccess(Ljava/lang/String;II)V
    .locals 3
    .parameter "text"
    .parameter "strategy"
    .parameter "requestMethod"

    .prologue
    .line 289
    iget-object v0, p0, Lbbc/mobile/news/service/UpdateService;->mUpdateProgress:Lbbc/mobile/news/service/UpdateService$OnProgressListener;

    iget v1, p0, Lbbc/mobile/news/service/UpdateService;->mTotalFeedCount:I

    iget v2, p0, Lbbc/mobile/news/service/UpdateService;->mReceivedFeeds:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lbbc/mobile/news/service/UpdateService;->mReceivedFeeds:I

    invoke-interface {v0, v1, v2}, Lbbc/mobile/news/service/UpdateService$OnProgressListener;->onProgress(II)V

    .line 290
    return-void
.end method

.method public onTickerFailed()V
    .locals 3

    .prologue
    .line 284
    iget-object v0, p0, Lbbc/mobile/news/service/UpdateService;->mUpdateProgress:Lbbc/mobile/news/service/UpdateService$OnProgressListener;

    iget v1, p0, Lbbc/mobile/news/service/UpdateService;->mTotalFeedCount:I

    iget v2, p0, Lbbc/mobile/news/service/UpdateService;->mReceivedFeeds:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lbbc/mobile/news/service/UpdateService;->mReceivedFeeds:I

    invoke-interface {v0, v1, v2}, Lbbc/mobile/news/service/UpdateService$OnProgressListener;->onProgress(II)V

    .line 285
    return-void
.end method

.method public onTickerSuccess(Lbbc/mobile/news/model/Ticker;II)V
    .locals 3
    .parameter "ticker"
    .parameter "strategy"
    .parameter "requestMethod"

    .prologue
    .line 279
    iget-object v0, p0, Lbbc/mobile/news/service/UpdateService;->mUpdateProgress:Lbbc/mobile/news/service/UpdateService$OnProgressListener;

    iget v1, p0, Lbbc/mobile/news/service/UpdateService;->mTotalFeedCount:I

    iget v2, p0, Lbbc/mobile/news/service/UpdateService;->mReceivedFeeds:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lbbc/mobile/news/service/UpdateService;->mReceivedFeeds:I

    invoke-interface {v0, v1, v2}, Lbbc/mobile/news/service/UpdateService$OnProgressListener;->onProgress(II)V

    .line 280
    return-void
.end method

.method public onUpdateReceived(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 106
    invoke-static {p0}, Lbbc/mobile/news/util/GlobalSettings;->isNotificationsEnabled(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lbbc/mobile/news/service/UpdateService;->mIsNotificationsEnabled:Z

    .line 108
    const-string v1, "UpdateService"

    const-string v2, "onUpdateReceived()..."

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lbbc/mobile/news/service/UpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 110
    .local v0, activeNetworkInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    new-instance v1, Lbbc/mobile/news/feed/FeedManager;

    const-string v2, "UpdateServiceFeedManager"

    invoke-direct {v1, v2}, Lbbc/mobile/news/feed/FeedManager;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lbbc/mobile/news/service/UpdateService;->mFeedManager:Lbbc/mobile/news/feed/FeedManager;

    .line 112
    invoke-direct {p0, p1}, Lbbc/mobile/news/service/UpdateService;->onUpdateFeeds(Landroid/content/Intent;)V

    .line 113
    invoke-direct {p0, p1}, Lbbc/mobile/news/service/UpdateService;->onClearCache(Landroid/content/Intent;)V

    .line 118
    :goto_0
    return-void

    .line 115
    :cond_0
    const-string v1, "UpdateService"

    const-string v2, "BCC News update service failed to receive config file... finishing."

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lbbc/mobile/news/service/UpdateService;->finishService()V

    goto :goto_0
.end method

.method protected declared-synchronized onWakefulHandleIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 68
    monitor-enter p0

    :try_start_0
    const-string v1, "UpdateService"

    const-string v2, "onWakefulHandleIntent()"

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    sget-boolean v1, Lbbc/mobile/news/service/UpdateService;->IS_SERVICE_RUNNING:Z

    if-nez v1, :cond_0

    .line 73
    const/4 v1, 0x1

    sput-boolean v1, Lbbc/mobile/news/service/UpdateService;->IS_SERVICE_RUNNING:Z

    .line 75
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 76
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    const-string v1, "BdlUpdateCache"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    const-string v1, "BdlUpdateCache"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 89
    .end local v0           #extras:Landroid/os/Bundle;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 79
    .restart local v0       #extras:Landroid/os/Bundle;
    :pswitch_0
    :try_start_1
    invoke-virtual {p0, p1}, Lbbc/mobile/news/service/UpdateService;->onBootReceived(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 68
    .end local v0           #extras:Landroid/os/Bundle;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 80
    .restart local v0       #extras:Landroid/os/Bundle;
    :pswitch_1
    :try_start_2
    invoke-virtual {p0, p1}, Lbbc/mobile/news/service/UpdateService;->onUpdateReceived(Landroid/content/Intent;)V

    goto :goto_0

    .line 86
    :cond_1
    const-string v1, "UpdateService"

    const-string v2, "Dbl_Key_Updadte_cache not found!"

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected requestFeeds(I)V
    .locals 10
    .parameter "readStrategy"

    .prologue
    .line 199
    :try_start_0
    iget-object v0, p0, Lbbc/mobile/news/service/UpdateService;->mConfig:Lbbc/mobile/news/model/Config;

    if-eqz v0, :cond_3

    .line 201
    const/4 v0, 0x0

    iput v0, p0, Lbbc/mobile/news/service/UpdateService;->mTotalFeedCount:I

    .line 202
    const/4 v0, 0x0

    iput v0, p0, Lbbc/mobile/news/service/UpdateService;->mReceivedFeeds:I

    .line 204
    iget-object v0, p0, Lbbc/mobile/news/service/UpdateService;->mFeedManager:Lbbc/mobile/news/feed/FeedManager;

    invoke-virtual {v0}, Lbbc/mobile/news/feed/FeedManager;->clear()V

    .line 206
    invoke-static {p0}, Lbbc/mobile/news/util/GlobalSettings;->isTickerEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    const-string v0, "UpdateService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Ticker feed added, TotalFeedCount:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lbbc/mobile/news/service/UpdateService;->mTotalFeedCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lbbc/mobile/news/service/UpdateService;->mFeedManager:Lbbc/mobile/news/feed/FeedManager;

    new-instance v2, Lbbc/mobile/news/model/Feed;

    const-string v1, "Ticker Feed"

    const/4 v3, -0x7

    iget-object v4, p0, Lbbc/mobile/news/service/UpdateService;->mConfig:Lbbc/mobile/news/model/Config;

    invoke-virtual {v4}, Lbbc/mobile/news/model/Config;->getTickerUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Lbbc/mobile/news/model/Feed;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v3, p0, Lbbc/mobile/news/service/UpdateService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    move-object v1, p0

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lbbc/mobile/news/feed/FeedManager;->addTickerFeed(Landroid/content/Context;Lbbc/mobile/news/model/Feed;Landroid/os/Handler;II)V

    iget v0, p0, Lbbc/mobile/news/service/UpdateService;->mTotalFeedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbbc/mobile/news/service/UpdateService;->mTotalFeedCount:I

    .line 211
    :cond_0
    iget-object v0, p0, Lbbc/mobile/news/service/UpdateService;->mConfig:Lbbc/mobile/news/model/Config;

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lbbc/mobile/news/model/Config;->getVisibleFeeds(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 219
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->isWorldWide()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 221
    iget-object v0, p0, Lbbc/mobile/news/service/UpdateService;->mConfig:Lbbc/mobile/news/model/Config;

    invoke-virtual {v0}, Lbbc/mobile/news/model/Config;->getAvDialogUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 222
    iget-object v3, p0, Lbbc/mobile/news/service/UpdateService;->mFeedManager:Lbbc/mobile/news/feed/FeedManager;

    iget-object v0, p0, Lbbc/mobile/news/service/UpdateService;->mConfig:Lbbc/mobile/news/model/Config;

    invoke-virtual {v0}, Lbbc/mobile/news/model/Config;->getAvDialogUrl()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lbbc/mobile/news/service/UpdateService;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    move-object v5, p0

    move v7, p1

    invoke-virtual/range {v3 .. v8}, Lbbc/mobile/news/feed/FeedManager;->addAvDialogFeed(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;II)V

    iget v0, p0, Lbbc/mobile/news/service/UpdateService;->mTotalFeedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbbc/mobile/news/service/UpdateService;->mTotalFeedCount:I

    .line 223
    const-string v0, "UpdateService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "AV Dialog feed added, TotalFeedCount:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lbbc/mobile/news/service/UpdateService;->mTotalFeedCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :cond_1
    invoke-direct {p0}, Lbbc/mobile/news/service/UpdateService;->getAdFlagpoleFeed()Lbbc/mobile/news/model/Feed;

    move-result-object v5

    .line 227
    .local v5, flagpoleFeed:Lbbc/mobile/news/model/Feed;
    if-eqz v5, :cond_2

    .line 228
    iget-object v3, p0, Lbbc/mobile/news/service/UpdateService;->mFeedManager:Lbbc/mobile/news/feed/FeedManager;

    iget-object v6, p0, Lbbc/mobile/news/service/UpdateService;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    move-object v4, p0

    move v7, p1

    invoke-virtual/range {v3 .. v8}, Lbbc/mobile/news/feed/FeedManager;->addTextFeed(Landroid/content/Context;Lbbc/mobile/news/model/Feed;Landroid/os/Handler;II)V

    iget v0, p0, Lbbc/mobile/news/service/UpdateService;->mTotalFeedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbbc/mobile/news/service/UpdateService;->mTotalFeedCount:I

    .line 229
    const-string v0, "UpdateService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "flagpole feed added, TotalFeedCount:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lbbc/mobile/news/service/UpdateService;->mTotalFeedCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .end local v5           #flagpoleFeed:Lbbc/mobile/news/model/Feed;
    :cond_2
    iget-object v0, p0, Lbbc/mobile/news/service/UpdateService;->mFeedManager:Lbbc/mobile/news/feed/FeedManager;

    invoke-virtual {v0}, Lbbc/mobile/news/feed/FeedManager;->fetch()V

    .line 245
    :cond_3
    :goto_1
    return-void

    .line 211
    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbbc/mobile/news/model/Feed;

    .line 212
    .local v2, feed:Lbbc/mobile/news/model/Feed;
    iget-object v0, p0, Lbbc/mobile/news/service/UpdateService;->mFeedManager:Lbbc/mobile/news/feed/FeedManager;

    iget-object v3, p0, Lbbc/mobile/news/service/UpdateService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    move-object v1, p0

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lbbc/mobile/news/feed/FeedManager;->addCategoryFeed(Landroid/content/Context;Lbbc/mobile/news/model/Feed;Landroid/os/Handler;II)V

    .line 213
    iget v0, p0, Lbbc/mobile/news/service/UpdateService;->mTotalFeedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbbc/mobile/news/service/UpdateService;->mTotalFeedCount:I

    .line 215
    const-string v0, "UpdateService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lbbc/mobile/news/model/Feed;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " feed added, TotalFeedCount:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lbbc/mobile/news/service/UpdateService;->mTotalFeedCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 239
    .end local v2           #feed:Lbbc/mobile/news/model/Feed;
    :catch_0
    move-exception v9

    .line 241
    .local v9, exception:Ljava/lang/Exception;
    const-string v0, "UpdateService"

    const-string v1, "ERROR: exception in update server "

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lbbc/mobile/news/service/UpdateService;->mUpdateProgress:Lbbc/mobile/news/service/UpdateService$OnProgressListener;

    iget v1, p0, Lbbc/mobile/news/service/UpdateService;->mTotalFeedCount:I

    iget v3, p0, Lbbc/mobile/news/service/UpdateService;->mTotalFeedCount:I

    invoke-interface {v0, v1, v3}, Lbbc/mobile/news/service/UpdateService$OnProgressListener;->onProgress(II)V

    .line 243
    invoke-virtual {p0}, Lbbc/mobile/news/service/UpdateService;->finishService()V

    goto :goto_1
.end method

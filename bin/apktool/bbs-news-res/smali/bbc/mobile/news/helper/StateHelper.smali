.class public Lbbc/mobile/news/helper/StateHelper;
.super Ljava/lang/Object;
.source "StateHelper.java"


# static fields
.field public static final APP_LAUNCHED:I = 0x0

.field public static final APP_RESUMED:I = 0x1

.field private static final APP_RESUME_STR_METHOD:Ljava/lang/String; = "app-resume"

.field public static final APP_RUNNING:I = 0x2

.field private static final APP_START_STR_METHOD:Ljava/lang/String; = "app-start"

.field private static final CLICK_STR_METHOD:Ljava/lang/String; = "click"

.field public static final FROM_CLICK:I = 0x5

.field public static final FROM_NOTIFICATION:I = 0x3

.field public static final FROM_SWIPE:I = 0x7

.field public static final FROM_TICKER:I = 0x6

.field public static final FROM_WIDGET:I = 0x4

.field public static final INSTANCE:Lbbc/mobile/news/helper/StateHelper; = null

.field public static final NONE:I = 0x8

.field private static final NOTIFICATION_STR_METHOD:Ljava/lang/String; = "notification"

.field private static final SWIPE_STR_METHOD:Ljava/lang/String; = "swipe"

.field private static final TICKER_STR_METHOD:Ljava/lang/String; = "ticker"

.field private static final UNKNOWN_STR_METHOD:Ljava/lang/String; = "unknown"

.field private static final WIDGET_STR_METHOD:Ljava/lang/String; = "widget"


# instance fields
.field private mAppState:I

.field private mArticleLoadState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Lbbc/mobile/news/helper/StateHelper;

    invoke-direct {v0}, Lbbc/mobile/news/helper/StateHelper;-><init>()V

    sput-object v0, Lbbc/mobile/news/helper/StateHelper;->INSTANCE:Lbbc/mobile/news/helper/StateHelper;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x5

    iput v0, p0, Lbbc/mobile/news/helper/StateHelper;->mArticleLoadState:I

    .line 33
    const/4 v0, 0x2

    iput v0, p0, Lbbc/mobile/news/helper/StateHelper;->mAppState:I

    .line 37
    return-void
.end method

.method public static final getInstance()Lbbc/mobile/news/helper/StateHelper;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lbbc/mobile/news/helper/StateHelper;->INSTANCE:Lbbc/mobile/news/helper/StateHelper;

    return-object v0
.end method

.method public static final methodToString(I)Ljava/lang/String;
    .locals 1
    .parameter "method"

    .prologue
    .line 105
    invoke-static {p0}, Lbbc/mobile/news/helper/StateHelper;->stateToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final stateToString(I)Ljava/lang/String;
    .locals 1
    .parameter "method"

    .prologue
    .line 110
    packed-switch p0, :pswitch_data_0

    .line 119
    :pswitch_0
    const-string v0, "unknown"

    :goto_0
    return-object v0

    .line 112
    :pswitch_1
    const-string v0, "notification"

    goto :goto_0

    .line 113
    :pswitch_2
    const-string v0, "app-resume"

    goto :goto_0

    .line 114
    :pswitch_3
    const-string v0, "app-start"

    goto :goto_0

    .line 115
    :pswitch_4
    const-string v0, "widget"

    goto :goto_0

    .line 116
    :pswitch_5
    const-string v0, "ticker"

    goto :goto_0

    .line 117
    :pswitch_6
    const-string v0, "click"

    goto :goto_0

    .line 118
    :pswitch_7
    const-string v0, "swipe"

    goto :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public getAppState()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lbbc/mobile/news/helper/StateHelper;->mAppState:I

    return v0
.end method

.method public getArticleLoadState()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lbbc/mobile/news/helper/StateHelper;->mArticleLoadState:I

    return v0
.end method

.method public isAppLaunch()Z
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lbbc/mobile/news/helper/StateHelper;->mAppState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAppResumed()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 73
    iget v1, p0, Lbbc/mobile/news/helper/StateHelper;->mAppState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isArticleLoadedFromClick()Z
    .locals 2

    .prologue
    .line 85
    iget v0, p0, Lbbc/mobile/news/helper/StateHelper;->mArticleLoadState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isArticleLoadedFromNotification()Z
    .locals 2

    .prologue
    .line 81
    iget v0, p0, Lbbc/mobile/news/helper/StateHelper;->mArticleLoadState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isArticleLoadedFromSwipe()Z
    .locals 2

    .prologue
    .line 89
    iget v0, p0, Lbbc/mobile/news/helper/StateHelper;->mArticleLoadState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isArticleLoadedFromTicker()Z
    .locals 2

    .prologue
    .line 77
    iget v0, p0, Lbbc/mobile/news/helper/StateHelper;->mArticleLoadState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isArticleLoadedFromWidget()Z
    .locals 2

    .prologue
    .line 93
    iget v0, p0, Lbbc/mobile/news/helper/StateHelper;->mArticleLoadState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAppState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 44
    iput p1, p0, Lbbc/mobile/news/helper/StateHelper;->mAppState:I

    .line 45
    return-void
.end method

.method public setArticleLoadState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 65
    iput p1, p0, Lbbc/mobile/news/helper/StateHelper;->mArticleLoadState:I

    .line 66
    return-void
.end method

.method public setState(Landroid/os/Bundle;I)V
    .locals 3
    .parameter "state"
    .parameter "launch"

    .prologue
    const/4 v1, 0x2

    .line 49
    invoke-static {p1}, Lbbc/mobile/news/util/IntentFactory;->isLaunchedFromWidget(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iput v1, p0, Lbbc/mobile/news/helper/StateHelper;->mAppState:I

    .line 51
    const/4 v0, 0x4

    iput v0, p0, Lbbc/mobile/news/helper/StateHelper;->mArticleLoadState:I

    .line 60
    :goto_0
    const-string v0, "PUSH-"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "StateHelper state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lbbc/mobile/news/helper/StateHelper;->mArticleLoadState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void

    .line 52
    :cond_0
    invoke-static {p1}, Lbbc/mobile/news/util/IntentFactory;->isLaunchedFromNotification(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    iput v1, p0, Lbbc/mobile/news/helper/StateHelper;->mAppState:I

    .line 54
    const/4 v0, 0x3

    iput v0, p0, Lbbc/mobile/news/helper/StateHelper;->mArticleLoadState:I

    goto :goto_0

    .line 56
    :cond_1
    iput p2, p0, Lbbc/mobile/news/helper/StateHelper;->mAppState:I

    .line 57
    const/4 v0, 0x5

    iput v0, p0, Lbbc/mobile/news/helper/StateHelper;->mArticleLoadState:I

    goto :goto_0
.end method

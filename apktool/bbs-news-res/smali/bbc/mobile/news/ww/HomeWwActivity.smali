.class public Lbbc/mobile/news/ww/HomeWwActivity;
.super Lbbc/mobile/news/HomeScreenActivity;
.source "HomeWwActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lbbc/mobile/news/ww/HomeWwActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/ww/HomeWwActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lbbc/mobile/news/HomeScreenActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public initAdManager(I)Lbbc/mobile/news/adverts/AdManager;
    .locals 2
    .parameter "adHolderId"

    .prologue
    .line 35
    new-instance v0, Lbbc/mobile/news/ww/adverts/WWAdManager;

    invoke-direct {v0, p0}, Lbbc/mobile/news/ww/adverts/WWAdManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lbbc/mobile/news/ww/HomeWwActivity;->getAdHolderResId()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lbbc/mobile/news/ww/adverts/WWAdManager;->setAdHolderView(Lbbc/mobile/news/BaseActivity;I)Lbbc/mobile/news/adverts/AdManager;

    move-result-object v0

    return-object v0
.end method

.method public initAdManager(Landroid/view/ViewGroup;)Lbbc/mobile/news/adverts/AdManager;
    .locals 1
    .parameter "adHolderView"

    .prologue
    .line 29
    new-instance v0, Lbbc/mobile/news/ww/adverts/WWAdManager;

    invoke-direct {v0, p0}, Lbbc/mobile/news/ww/adverts/WWAdManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lbbc/mobile/news/ww/adverts/WWAdManager;->setAdHolderView(Landroid/view/ViewGroup;)Lbbc/mobile/news/adverts/AdManager;

    move-result-object v0

    return-object v0
.end method

.method public initWWOrUkSpecifics()V
    .locals 2

    .prologue
    .line 69
    invoke-super {p0}, Lbbc/mobile/news/HomeScreenActivity;->initWWOrUkSpecifics()V

    .line 70
    invoke-virtual {p0}, Lbbc/mobile/news/ww/HomeWwActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lbbc/mobile/news/ww/receiver/AlarmReceiverWw;

    invoke-static {v0, v1}, Lbbc/mobile/news/ww/service/UpdateService;->rescheduleUpdateService(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    return-void
.end method

.method public onAVButtonClicked()V
    .locals 0

    .prologue
    .line 76
    invoke-super {p0}, Lbbc/mobile/news/HomeScreenActivity;->onAVButtonClicked()V

    .line 77
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 22
    invoke-super {p0, p1}, Lbbc/mobile/news/HomeScreenActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-virtual {p0}, Lbbc/mobile/news/ww/HomeWwActivity;->requestAdFlagPole()V

    .line 24
    return-void
.end method

.method public onLiveButtonClicked()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    .line 40
    invoke-super {p0}, Lbbc/mobile/news/HomeScreenActivity;->onResume()V

    .line 41
    invoke-virtual {p0}, Lbbc/mobile/news/ww/HomeWwActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 42
    .local v2, intent:Landroid/content/Intent;
    sget-object v3, Lbbc/mobile/news/ww/HomeWwActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onResume : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const-string v3, "bbc.avplayer.id"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 47
    const-string v3, "bbc.avplayer.title"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 49
    const-string v3, "bbc.avplayer.title"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, avId:Ljava/lang/String;
    new-instance v0, Lbbc/mobile/news/model/Article;

    invoke-direct {v0}, Lbbc/mobile/news/model/Article;-><init>()V

    .line 60
    .local v0, audioArticle:Lbbc/mobile/news/model/Article;
    invoke-virtual {v0, v1}, Lbbc/mobile/news/model/Article;->setId(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0}, Lbbc/mobile/news/model/Article;->getCategory()Lbbc/mobile/news/model/Category;

    .line 64
    .end local v0           #audioArticle:Lbbc/mobile/news/model/Article;
    .end local v1           #avId:Ljava/lang/String;
    :cond_0
    return-void
.end method

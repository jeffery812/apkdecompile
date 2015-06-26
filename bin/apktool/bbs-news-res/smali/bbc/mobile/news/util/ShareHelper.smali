.class public Lbbc/mobile/news/util/ShareHelper;
.super Ljava/lang/Object;
.source "ShareHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mArticle:Lbbc/mobile/news/model/Article;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mInterDialog:Lbbc/mobile/news/dialog/InterstitialShareDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lbbc/mobile/news/util/ShareHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/util/ShareHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Lbbc/mobile/news/util/ShareHelper$1;

    invoke-direct {v0, p0}, Lbbc/mobile/news/util/ShareHelper$1;-><init>(Lbbc/mobile/news/util/ShareHelper;)V

    iput-object v0, p0, Lbbc/mobile/news/util/ShareHelper;->mClickListener:Landroid/view/View$OnClickListener;

    .line 21
    return-void
.end method

.method static synthetic access$0(Lbbc/mobile/news/util/ShareHelper;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lbbc/mobile/news/util/ShareHelper;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1(Lbbc/mobile/news/util/ShareHelper;)Lbbc/mobile/news/model/Article;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lbbc/mobile/news/util/ShareHelper;->mArticle:Lbbc/mobile/news/model/Article;

    return-object v0
.end method

.method static synthetic access$2(Lbbc/mobile/news/util/ShareHelper;Landroid/app/Activity;Lbbc/mobile/news/model/Article;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lbbc/mobile/news/util/ShareHelper;->share(Landroid/app/Activity;Lbbc/mobile/news/model/Article;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$3(Lbbc/mobile/news/util/ShareHelper;)Lbbc/mobile/news/dialog/InterstitialShareDialog;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lbbc/mobile/news/util/ShareHelper;->mInterDialog:Lbbc/mobile/news/dialog/InterstitialShareDialog;

    return-object v0
.end method

.method private getInterDialog(Landroid/content/Context;)Lbbc/mobile/news/dialog/InterstitialShareDialog;
    .locals 2
    .parameter "context"

    .prologue
    .line 31
    iget-object v0, p0, Lbbc/mobile/news/util/ShareHelper;->mInterDialog:Lbbc/mobile/news/dialog/InterstitialShareDialog;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lbbc/mobile/news/dialog/InterstitialShareDialog;

    invoke-direct {v0, p1}, Lbbc/mobile/news/dialog/InterstitialShareDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbbc/mobile/news/util/ShareHelper;->mInterDialog:Lbbc/mobile/news/dialog/InterstitialShareDialog;

    .line 33
    iget-object v0, p0, Lbbc/mobile/news/util/ShareHelper;->mInterDialog:Lbbc/mobile/news/dialog/InterstitialShareDialog;

    invoke-virtual {v0, p0}, Lbbc/mobile/news/dialog/InterstitialShareDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 34
    iget-object v0, p0, Lbbc/mobile/news/util/ShareHelper;->mInterDialog:Lbbc/mobile/news/dialog/InterstitialShareDialog;

    invoke-virtual {v0, p0}, Lbbc/mobile/news/dialog/InterstitialShareDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 35
    iget-object v0, p0, Lbbc/mobile/news/util/ShareHelper;->mInterDialog:Lbbc/mobile/news/dialog/InterstitialShareDialog;

    iget-object v1, p0, Lbbc/mobile/news/util/ShareHelper;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lbbc/mobile/news/dialog/InterstitialShareDialog;->setOnSharedClicked(Landroid/view/View$OnClickListener;)V

    .line 38
    :cond_0
    iget-object v0, p0, Lbbc/mobile/news/util/ShareHelper;->mInterDialog:Lbbc/mobile/news/dialog/InterstitialShareDialog;

    return-object v0
.end method

.method private share(Landroid/app/Activity;Lbbc/mobile/news/model/Article;Landroid/content/Intent;)V
    .locals 3
    .parameter "activity"
    .parameter "article"
    .parameter "intent"

    .prologue
    .line 68
    if-nez p3, :cond_0

    .line 69
    iget-object v2, p0, Lbbc/mobile/news/util/ShareHelper;->mArticle:Lbbc/mobile/news/model/Article;

    invoke-static {v2}, Lbbc/mobile/news/util/IntentFactory;->getShareIntent(Lbbc/mobile/news/model/Article;)Landroid/content/Intent;

    move-result-object p3

    .line 71
    :cond_0
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->get()Lbbc/mobile/news/util/GlobalSettings;

    move-result-object v2

    invoke-virtual {v2}, Lbbc/mobile/news/util/GlobalSettings;->getStats()Lbbc/mobile/news/stats/Stats;

    move-result-object v1

    .line 72
    .local v1, stats:Lbbc/mobile/news/stats/Stats;
    invoke-virtual {v1}, Lbbc/mobile/news/stats/Stats;->getOmniture()Lbbc/mobile/news/stats/Omniture3;

    move-result-object v0

    .line 74
    .local v0, omniture:Lbbc/mobile/news/stats/Omniture3;
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->get()Lbbc/mobile/news/util/GlobalSettings;

    move-result-object v2

    invoke-virtual {v2}, Lbbc/mobile/news/util/GlobalSettings;->getStats()Lbbc/mobile/news/stats/Stats;

    move-result-object v2

    invoke-virtual {v2, p2}, Lbbc/mobile/news/stats/Stats;->logShareButtonClickedACTION(Lbbc/mobile/news/model/Article;)Lbbc/mobile/news/stats/Stats;

    .line 75
    invoke-virtual {p1, p3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 77
    if-eqz v0, :cond_1

    .line 78
    invoke-virtual {v0, p1, p2}, Lbbc/mobile/news/stats/Omniture3;->logArticleShared(Landroid/content/Context;Lbbc/mobile/news/model/Article;)Lbbc/mobile/news/stats/Omniture3;

    .line 79
    :cond_1
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lbbc/mobile/news/util/ShareHelper;->mInterDialog:Lbbc/mobile/news/dialog/InterstitialShareDialog;

    .line 94
    iput-object v0, p0, Lbbc/mobile/news/util/ShareHelper;->mArticle:Lbbc/mobile/news/model/Article;

    .line 95
    iput-object v0, p0, Lbbc/mobile/news/util/ShareHelper;->mActivity:Landroid/app/Activity;

    .line 96
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 83
    invoke-virtual {p0}, Lbbc/mobile/news/util/ShareHelper;->cleanUp()V

    .line 84
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 88
    invoke-virtual {p0}, Lbbc/mobile/news/util/ShareHelper;->cleanUp()V

    .line 89
    return-void
.end method

.method public shareArticle(Lbbc/mobile/news/model/Article;Landroid/app/Activity;)V
    .locals 7
    .parameter "article"
    .parameter "activity"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 43
    iput-object p2, p0, Lbbc/mobile/news/util/ShareHelper;->mActivity:Landroid/app/Activity;

    .line 44
    iput-object p1, p0, Lbbc/mobile/news/util/ShareHelper;->mArticle:Lbbc/mobile/news/model/Article;

    .line 46
    iget-object v2, p0, Lbbc/mobile/news/util/ShareHelper;->mActivity:Landroid/app/Activity;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 47
    :cond_0
    sget-object v2, Lbbc/mobile/news/util/ShareHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "shareArticle() ERROR: activity:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lbbc/mobile/news/util/ShareHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   article:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_1
    iget-object v2, p0, Lbbc/mobile/news/util/ShareHelper;->mArticle:Lbbc/mobile/news/model/Article;

    invoke-static {v2}, Lbbc/mobile/news/util/IntentFactory;->getShareIntent(Lbbc/mobile/news/model/Article;)Landroid/content/Intent;

    move-result-object v1

    .line 51
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lbbc/mobile/news/util/ShareHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 53
    .local v0, availableActivities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 54
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v6, :cond_2

    .line 55
    iget-object v2, p0, Lbbc/mobile/news/util/ShareHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v2}, Lbbc/mobile/news/util/ShareHelper;->getInterDialog(Landroid/content/Context;)Lbbc/mobile/news/dialog/InterstitialShareDialog;

    move-result-object v2

    iput-object v2, p0, Lbbc/mobile/news/util/ShareHelper;->mInterDialog:Lbbc/mobile/news/dialog/InterstitialShareDialog;

    .line 56
    iget-object v3, p0, Lbbc/mobile/news/util/ShareHelper;->mInterDialog:Lbbc/mobile/news/dialog/InterstitialShareDialog;

    iget-object v4, p0, Lbbc/mobile/news/util/ShareHelper;->mArticle:Lbbc/mobile/news/model/Article;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v3, v4, v2}, Lbbc/mobile/news/dialog/InterstitialShareDialog;->setData(Lbbc/mobile/news/model/Article;Landroid/content/pm/ResolveInfo;)V

    .line 57
    iget-object v2, p0, Lbbc/mobile/news/util/ShareHelper;->mInterDialog:Lbbc/mobile/news/dialog/InterstitialShareDialog;

    invoke-virtual {v2}, Lbbc/mobile/news/dialog/InterstitialShareDialog;->show()V

    .line 64
    :goto_0
    return-void

    .line 59
    :cond_2
    iget-object v2, p0, Lbbc/mobile/news/util/ShareHelper;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lbbc/mobile/news/util/ShareHelper;->mArticle:Lbbc/mobile/news/model/Article;

    invoke-direct {p0, v2, v3, v1}, Lbbc/mobile/news/util/ShareHelper;->share(Landroid/app/Activity;Lbbc/mobile/news/model/Article;Landroid/content/Intent;)V

    goto :goto_0

    .line 62
    :cond_3
    sget v2, Lbbc/mobile/news/R$string;->error_no_share_apps:I

    invoke-virtual {p2, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

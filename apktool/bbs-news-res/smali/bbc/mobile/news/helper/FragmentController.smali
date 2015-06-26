.class public Lbbc/mobile/news/helper/FragmentController;
.super Ljava/lang/Object;
.source "FragmentController.java"

# interfaces
.implements Lbbc/mobile/news/model/AtomCallback;


# static fields
.field private static final ARTICLE_FRAGMENT:Ljava/lang/String; = "articleFragment"

.field private static final ARTICLE_MODE:I = 0x2

.field private static final LOADING_MODE:I = 0x0

.field private static final MODES:[I = null

.field private static final NEWS_FRAGMENT:Ljava/lang/String; = "newsFragment"

.field private static final NEWS_MODE:I = 0x1

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mFragmentManager:Landroid/support/v4/app/FragmentManager;

.field private mMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 13
    const-class v0, Lbbc/mobile/news/helper/FragmentController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/helper/FragmentController;->TAG:Ljava/lang/String;

    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 28
    aput v2, v0, v1

    .line 29
    aput v1, v0, v2

    .line 25
    sput-object v0, Lbbc/mobile/news/helper/FragmentController;->MODES:[I

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentManager;IZ)V
    .locals 1
    .parameter "fragmentManager"
    .parameter "rootViewResourceId"
    .parameter "isPhone"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lbbc/mobile/news/helper/FragmentController;->mMode:I

    .line 39
    iput-object p1, p0, Lbbc/mobile/news/helper/FragmentController;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 42
    return-void
.end method

.method private getArticleFragment()Lbbc/mobile/news/ArticleFragment;
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lbbc/mobile/news/helper/FragmentController;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    const-string v1, "articleFragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lbbc/mobile/news/ArticleFragment;

    return-object v0
.end method

.method private getNewsFragment()Lbbc/mobile/news/NewsFragment;
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lbbc/mobile/news/helper/FragmentController;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    const-string v1, "newsFragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lbbc/mobile/news/NewsFragment;

    return-object v0
.end method

.method private onModeChanged(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 72
    return-void
.end method


# virtual methods
.method public isValidMode(I)Z
    .locals 1
    .parameter "mode"

    .prologue
    .line 67
    sget-object v0, Lbbc/mobile/news/helper/FragmentController;->MODES:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAtomFailed(Lbbc/mobile/news/model/Feed;II)V
    .locals 4
    .parameter "feed"
    .parameter "strategy"
    .parameter "requestMethod"

    .prologue
    .line 101
    iget v2, p0, Lbbc/mobile/news/helper/FragmentController;->mMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 103
    invoke-direct {p0}, Lbbc/mobile/news/helper/FragmentController;->getNewsFragment()Lbbc/mobile/news/NewsFragment;

    move-result-object v1

    .line 105
    .local v1, newsFragment:Lbbc/mobile/news/NewsFragment;
    if-eqz v1, :cond_0

    .line 106
    invoke-virtual {v1, p1, p2, p3}, Lbbc/mobile/news/NewsFragment;->onAtomFailed(Lbbc/mobile/news/model/Feed;II)V

    .line 119
    .end local v1           #newsFragment:Lbbc/mobile/news/NewsFragment;
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    iget v2, p0, Lbbc/mobile/news/helper/FragmentController;->mMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 110
    invoke-direct {p0}, Lbbc/mobile/news/helper/FragmentController;->getNewsFragment()Lbbc/mobile/news/NewsFragment;

    move-result-object v1

    .line 111
    .restart local v1       #newsFragment:Lbbc/mobile/news/NewsFragment;
    invoke-direct {p0}, Lbbc/mobile/news/helper/FragmentController;->getArticleFragment()Lbbc/mobile/news/ArticleFragment;

    move-result-object v0

    .line 113
    .local v0, articleFragment:Lbbc/mobile/news/ArticleFragment;
    if-eqz v1, :cond_2

    .line 114
    invoke-virtual {v1, p1, p2, p3}, Lbbc/mobile/news/NewsFragment;->onAtomFailed(Lbbc/mobile/news/model/Feed;II)V

    .line 116
    :cond_2
    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0, p1, p2, p3}, Lbbc/mobile/news/ArticleFragment;->onAtomFailed(Lbbc/mobile/news/model/Feed;II)V

    goto :goto_0
.end method

.method public onAtomSuccess(Lbbc/mobile/news/model/Category;II)V
    .locals 4
    .parameter "category"
    .parameter "strategy"
    .parameter "requestMethod"

    .prologue
    .line 77
    iget v2, p0, Lbbc/mobile/news/helper/FragmentController;->mMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 79
    invoke-direct {p0}, Lbbc/mobile/news/helper/FragmentController;->getNewsFragment()Lbbc/mobile/news/NewsFragment;

    move-result-object v1

    .line 81
    .local v1, newsFragment:Lbbc/mobile/news/NewsFragment;
    if-eqz v1, :cond_0

    .line 82
    invoke-virtual {v1, p1, p2, p3}, Lbbc/mobile/news/NewsFragment;->onAtomSuccess(Lbbc/mobile/news/model/Category;II)V

    .line 96
    .end local v1           #newsFragment:Lbbc/mobile/news/NewsFragment;
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iget v2, p0, Lbbc/mobile/news/helper/FragmentController;->mMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 86
    invoke-direct {p0}, Lbbc/mobile/news/helper/FragmentController;->getNewsFragment()Lbbc/mobile/news/NewsFragment;

    move-result-object v1

    .line 87
    .restart local v1       #newsFragment:Lbbc/mobile/news/NewsFragment;
    invoke-direct {p0}, Lbbc/mobile/news/helper/FragmentController;->getArticleFragment()Lbbc/mobile/news/ArticleFragment;

    move-result-object v0

    .line 89
    .local v0, articleFragment:Lbbc/mobile/news/ArticleFragment;
    if-eqz v1, :cond_2

    .line 90
    invoke-virtual {v1, p1, p2, p3}, Lbbc/mobile/news/NewsFragment;->onAtomSuccess(Lbbc/mobile/news/model/Category;II)V

    .line 92
    :cond_2
    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0, p1, p2, p3}, Lbbc/mobile/news/ArticleFragment;->onAtomSuccess(Lbbc/mobile/news/model/Category;II)V

    goto :goto_0
.end method

.method public declared-synchronized setArticleMode()V
    .locals 1

    .prologue
    .line 60
    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    iput v0, p0, Lbbc/mobile/news/helper/FragmentController;->mMode:I

    .line 62
    iget v0, p0, Lbbc/mobile/news/helper/FragmentController;->mMode:I

    invoke-direct {p0, v0}, Lbbc/mobile/news/helper/FragmentController;->onModeChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit p0

    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLoadingMode()V
    .locals 1

    .prologue
    .line 46
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lbbc/mobile/news/helper/FragmentController;->mMode:I

    .line 48
    iget v0, p0, Lbbc/mobile/news/helper/FragmentController;->mMode:I

    invoke-direct {p0, v0}, Lbbc/mobile/news/helper/FragmentController;->onModeChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit p0

    return-void

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setNewsMode()V
    .locals 1

    .prologue
    .line 53
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput v0, p0, Lbbc/mobile/news/helper/FragmentController;->mMode:I

    .line 55
    iget v0, p0, Lbbc/mobile/news/helper/FragmentController;->mMode:I

    invoke-direct {p0, v0}, Lbbc/mobile/news/helper/FragmentController;->onModeChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    monitor-exit p0

    return-void

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

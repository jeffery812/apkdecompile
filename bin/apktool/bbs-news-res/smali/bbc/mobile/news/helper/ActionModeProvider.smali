.class public Lbbc/mobile/news/helper/ActionModeProvider;
.super Ljava/lang/Object;
.source "ActionModeProvider.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final LOGGING:Z = true

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private mArticle:Lbbc/mobile/news/model/Article;

.field private mCallback:Landroid/view/ActionMode$Callback;

.field private mCategory:Lbbc/mobile/news/model/Category;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lbbc/mobile/news/helper/ActionModeProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/helper/ActionModeProvider;->TAG:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v0, p0, Lbbc/mobile/news/helper/ActionModeProvider;->mCategory:Lbbc/mobile/news/model/Category;

    .line 22
    iput-object v0, p0, Lbbc/mobile/news/helper/ActionModeProvider;->mArticle:Lbbc/mobile/news/model/Article;

    .line 23
    iput-object v0, p0, Lbbc/mobile/news/helper/ActionModeProvider;->mActionMode:Landroid/view/ActionMode;

    .line 24
    return-void
.end method

.method private static final log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 103
    sget-object v0, Lbbc/mobile/news/helper/ActionModeProvider;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method


# virtual methods
.method public getActionMode()Landroid/view/ActionMode;
    .locals 1

    .prologue
    .line 90
    const-string v0, "getActionMode()"

    invoke-static {v0}, Lbbc/mobile/news/helper/ActionModeProvider;->log(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lbbc/mobile/news/helper/ActionModeProvider;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method public getArticle()Lbbc/mobile/news/model/Article;
    .locals 1

    .prologue
    .line 83
    const-string v0, "getArticle()"

    invoke-static {v0}, Lbbc/mobile/news/helper/ActionModeProvider;->log(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lbbc/mobile/news/helper/ActionModeProvider;->mArticle:Lbbc/mobile/news/model/Article;

    return-object v0
.end method

.method public getCategory()Lbbc/mobile/news/model/Category;
    .locals 1

    .prologue
    .line 76
    const-string v0, "getCategory()"

    invoke-static {v0}, Lbbc/mobile/news/helper/ActionModeProvider;->log(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lbbc/mobile/news/helper/ActionModeProvider;->mCategory:Lbbc/mobile/news/model/Category;

    return-object v0
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 69
    const-string v0, "hasData())"

    invoke-static {v0}, Lbbc/mobile/news/helper/ActionModeProvider;->log(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lbbc/mobile/news/helper/ActionModeProvider;->mCategory:Lbbc/mobile/news/model/Category;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbbc/mobile/news/helper/ActionModeProvider;->mArticle:Lbbc/mobile/news/model/Article;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelected(Lbbc/mobile/news/model/Article;)Z
    .locals 2
    .parameter "article"

    .prologue
    .line 97
    iget-object v0, p0, Lbbc/mobile/news/helper/ActionModeProvider;->mCategory:Lbbc/mobile/news/model/Category;

    iget-object v1, p0, Lbbc/mobile/news/helper/ActionModeProvider;->mArticle:Lbbc/mobile/news/model/Article;

    invoke-static {v0, v1, p1}, Lbbc/mobile/news/helper/SelectionProvider;->isSelected(Lbbc/mobile/news/model/Category;Lbbc/mobile/news/model/Article;Lbbc/mobile/news/model/Article;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbbc/mobile/news/helper/ActionModeProvider;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 62
    const-string v0, "onFinish()"

    invoke-static {v0}, Lbbc/mobile/news/helper/ActionModeProvider;->log(Ljava/lang/String;)V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lbbc/mobile/news/helper/ActionModeProvider;->mActionMode:Landroid/view/ActionMode;

    .line 65
    return-void
.end method

.method public setActionMode(Landroid/view/ActionMode;)V
    .locals 1
    .parameter "actionMode"

    .prologue
    .line 48
    const-string v0, "setActionMode()"

    invoke-static {v0}, Lbbc/mobile/news/helper/ActionModeProvider;->log(Ljava/lang/String;)V

    .line 50
    iput-object p1, p0, Lbbc/mobile/news/helper/ActionModeProvider;->mActionMode:Landroid/view/ActionMode;

    .line 51
    return-void
.end method

.method public setCallback(Landroid/view/ActionMode$Callback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 55
    const-string v0, "setCallback()"

    invoke-static {v0}, Lbbc/mobile/news/helper/ActionModeProvider;->log(Ljava/lang/String;)V

    .line 57
    iput-object p1, p0, Lbbc/mobile/news/helper/ActionModeProvider;->mCallback:Landroid/view/ActionMode$Callback;

    .line 58
    return-void
.end method

.method public startActionMode(Landroid/app/Activity;Lbbc/mobile/news/model/Category;Lbbc/mobile/news/model/Article;)V
    .locals 2
    .parameter "activity"
    .parameter "category"
    .parameter "article"

    .prologue
    .line 28
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "startActionMode(category:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lbbc/mobile/news/model/Category;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  article:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Lbbc/mobile/news/model/Article;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbbc/mobile/news/helper/ActionModeProvider;->log(Ljava/lang/String;)V

    .line 32
    iput-object p2, p0, Lbbc/mobile/news/helper/ActionModeProvider;->mCategory:Lbbc/mobile/news/model/Category;

    .line 33
    iput-object p3, p0, Lbbc/mobile/news/helper/ActionModeProvider;->mArticle:Lbbc/mobile/news/model/Article;

    .line 35
    iget-object v0, p0, Lbbc/mobile/news/helper/ActionModeProvider;->mCallback:Landroid/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 37
    iget-object v0, p0, Lbbc/mobile/news/helper/ActionModeProvider;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_2

    .line 38
    iget-object v0, p0, Lbbc/mobile/news/helper/ActionModeProvider;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lbbc/mobile/news/helper/ActionModeProvider;->mActionMode:Landroid/view/ActionMode;

    .line 42
    :cond_2
    iget-object v0, p0, Lbbc/mobile/news/helper/ActionModeProvider;->mCallback:Landroid/view/ActionMode$Callback;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lbbc/mobile/news/helper/ActionModeProvider;->mActionMode:Landroid/view/ActionMode;

    goto :goto_0
.end method

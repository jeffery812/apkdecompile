.class public abstract Lbbc/mobile/news/adverts/AdManager;
.super Ljava/lang/Object;
.source "AdManager.java"


# static fields
.field protected static final ADMOB:Ljava/lang/String; = "admob"

.field protected static final AMAZON:Ljava/lang/String; = "kindle"

.field protected static final CAROUSEL_KEY:Ljava/lang/String; = "carousel"

.field protected static final DEVICE:Ljava/lang/String; = "device"

.field protected static final PARENT_KEY:Ljava/lang/String; = "parent"

.field protected static final SDK_KEY:Ljava/lang/String; = "sdk"

.field protected static final STORYID_KEY:Ljava/lang/String; = "storyid"

.field protected static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lbbc/mobile/news/adverts/AdManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/adverts/AdManager;->TAG:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAdHolderView()Landroid/view/View;
.end method

.method public abstract hasAdHolderView()Z
.end method

.method public isInUk(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 31
    if-nez p1, :cond_1

    .line 41
    :cond_0
    :goto_0
    return v2

    .line 35
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lbbc/mobile/app/NewsApplication;

    .line 36
    .local v0, newsApplication:Lbbc/mobile/app/NewsApplication;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbbc/mobile/app/NewsApplication;->getPolicy()Lbbc/mobile/news/model/Policy;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 37
    invoke-virtual {v0}, Lbbc/mobile/app/NewsApplication;->getPolicy()Lbbc/mobile/news/model/Policy;

    move-result-object v1

    .line 38
    .local v1, policy:Lbbc/mobile/news/model/Policy;
    invoke-virtual {v1}, Lbbc/mobile/news/model/Policy;->isInsideUK()Z

    move-result v2

    goto :goto_0
.end method

.method public isLandscape(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPortrait(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 47
    return-void
.end method

.method public abstract requestAdd(Lbbc/mobile/news/BaseActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setAdHolderView(Landroid/view/ViewGroup;)Lbbc/mobile/news/adverts/AdManager;
.end method

.method public abstract setAdHolderView(Lbbc/mobile/news/BaseActivity;I)Lbbc/mobile/news/adverts/AdManager;
.end method

.class public Lbbc/mobile/news/adverts/BlankAdManager;
.super Lbbc/mobile/news/adverts/AdManager;
.source "BlankAdManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lbbc/mobile/news/adverts/AdManager;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method public getAdHolderView()Landroid/view/View;
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasAdHolderView()Z
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public requestAdd(Lbbc/mobile/news/BaseActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "activity"
    .parameter "parentCaracel"
    .parameter "displayCarousel"
    .parameter "storyId"

    .prologue
    .line 43
    return-void
.end method

.method public setAdHolderView(Landroid/view/ViewGroup;)Lbbc/mobile/news/adverts/AdManager;
    .locals 0
    .parameter "viewGroup"

    .prologue
    .line 30
    return-object p0
.end method

.method public setAdHolderView(Lbbc/mobile/news/BaseActivity;I)Lbbc/mobile/news/adverts/AdManager;
    .locals 0
    .parameter "activity"
    .parameter "resId"

    .prologue
    .line 36
    return-object p0
.end method

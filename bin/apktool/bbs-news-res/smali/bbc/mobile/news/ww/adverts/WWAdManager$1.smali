.class Lbbc/mobile/news/ww/adverts/WWAdManager$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "WWAdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbc/mobile/news/ww/adverts/WWAdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbbc/mobile/news/ww/adverts/WWAdManager;


# direct methods
.method constructor <init>(Lbbc/mobile/news/ww/adverts/WWAdManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbbc/mobile/news/ww/adverts/WWAdManager$1;->this$0:Lbbc/mobile/news/ww/adverts/WWAdManager;

    .line 280
    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(I)V
    .locals 3
    .parameter "errorCode"

    .prologue
    .line 299
    iget-object v0, p0, Lbbc/mobile/news/ww/adverts/WWAdManager$1;->this$0:Lbbc/mobile/news/ww/adverts/WWAdManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbbc/mobile/news/ww/adverts/WWAdManager;->setAdHolderVisibility(Z)V

    .line 300
    const-string v0, "Ads"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAdFailedToLoad() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    return-void
.end method

.method public onAdLoaded()V
    .locals 3

    .prologue
    .line 284
    iget-object v0, p0, Lbbc/mobile/news/ww/adverts/WWAdManager$1;->this$0:Lbbc/mobile/news/ww/adverts/WWAdManager;

    iget-object v0, v0, Lbbc/mobile/news/ww/adverts/WWAdManager;->mAdHolderView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lbbc/mobile/news/ww/adverts/WWAdManager$1;->this$0:Lbbc/mobile/news/ww/adverts/WWAdManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lbbc/mobile/news/ww/adverts/WWAdManager;->setAdHolderVisibility(Z)V

    .line 286
    const-string v0, "Ads"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAdLoaded()  w="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 287
    iget-object v2, p0, Lbbc/mobile/news/ww/adverts/WWAdManager$1;->this$0:Lbbc/mobile/news/ww/adverts/WWAdManager;

    iget-object v2, v2, Lbbc/mobile/news/ww/adverts/WWAdManager;->mAdHolderView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 288
    const-string v2, ", h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbbc/mobile/news/ww/adverts/WWAdManager$1;->this$0:Lbbc/mobile/news/ww/adverts/WWAdManager;

    iget-object v2, v2, Lbbc/mobile/news/ww/adverts/WWAdManager;->mAdHolderView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 286
    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    :goto_0
    iget-object v0, p0, Lbbc/mobile/news/ww/adverts/WWAdManager$1;->this$0:Lbbc/mobile/news/ww/adverts/WWAdManager;

    iget-object v0, v0, Lbbc/mobile/news/ww/adverts/WWAdManager;->mAdHolderView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 294
    return-void

    .line 291
    :cond_0
    const-string v0, "Ads"

    const-string v1, "onAdLoaded() no-ad-holder"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.class Lbbc/mobile/news/BaseActivity$2;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Lbbc/mobile/news/adverts/AdFlagPoleTask$OnAdFlagPoleReturnedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbc/mobile/news/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbbc/mobile/news/BaseActivity;


# direct methods
.method constructor <init>(Lbbc/mobile/news/BaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbbc/mobile/news/BaseActivity$2;->this$0:Lbbc/mobile/news/BaseActivity;

    .line 738
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFlagPoleReturned(ZZ)V
    .locals 1
    .parameter "addsEnabled"
    .parameter "requestSuccessful"

    .prologue
    .line 743
    iget-object v0, p0, Lbbc/mobile/news/BaseActivity$2;->this$0:Lbbc/mobile/news/BaseActivity;

    invoke-virtual {v0, p1, p2}, Lbbc/mobile/news/BaseActivity;->onAdFlagPoleReturned(ZZ)V

    .line 744
    return-void
.end method

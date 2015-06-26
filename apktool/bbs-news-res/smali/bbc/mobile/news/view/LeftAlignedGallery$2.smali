.class Lbbc/mobile/news/view/LeftAlignedGallery$2;
.super Ljava/lang/Object;
.source "LeftAlignedGallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbc/mobile/news/view/LeftAlignedGallery;->onKeyUp(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbbc/mobile/news/view/LeftAlignedGallery;


# direct methods
.method constructor <init>(Lbbc/mobile/news/view/LeftAlignedGallery;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbbc/mobile/news/view/LeftAlignedGallery$2;->this$0:Lbbc/mobile/news/view/LeftAlignedGallery;

    .line 1256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1258
    iget-object v0, p0, Lbbc/mobile/news/view/LeftAlignedGallery$2;->this$0:Lbbc/mobile/news/view/LeftAlignedGallery;

    #calls: Lbbc/mobile/news/view/LeftAlignedGallery;->dispatchUnpress()V
    invoke-static {v0}, Lbbc/mobile/news/view/LeftAlignedGallery;->access$6(Lbbc/mobile/news/view/LeftAlignedGallery;)V

    .line 1259
    return-void
.end method

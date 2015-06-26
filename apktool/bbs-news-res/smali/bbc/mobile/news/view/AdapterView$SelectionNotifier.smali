.class Lbbc/mobile/news/view/AdapterView$SelectionNotifier;
.super Ljava/lang/Object;
.source "AdapterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbc/mobile/news/view/AdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionNotifier"
.end annotation


# instance fields
.field final synthetic this$0:Lbbc/mobile/news/view/AdapterView;


# direct methods
.method private constructor <init>(Lbbc/mobile/news/view/AdapterView;)V
    .locals 0
    .parameter

    .prologue
    .line 838
    iput-object p1, p0, Lbbc/mobile/news/view/AdapterView$SelectionNotifier;->this$0:Lbbc/mobile/news/view/AdapterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lbbc/mobile/news/view/AdapterView;Lbbc/mobile/news/view/AdapterView$SelectionNotifier;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 838
    invoke-direct {p0, p1}, Lbbc/mobile/news/view/AdapterView$SelectionNotifier;-><init>(Lbbc/mobile/news/view/AdapterView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 840
    iget-object v0, p0, Lbbc/mobile/news/view/AdapterView$SelectionNotifier;->this$0:Lbbc/mobile/news/view/AdapterView;

    iget-boolean v0, v0, Lbbc/mobile/news/view/AdapterView;->mDataChanged:Z

    if-eqz v0, :cond_1

    .line 844
    iget-object v0, p0, Lbbc/mobile/news/view/AdapterView$SelectionNotifier;->this$0:Lbbc/mobile/news/view/AdapterView;

    invoke-virtual {v0}, Lbbc/mobile/news/view/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 845
    iget-object v0, p0, Lbbc/mobile/news/view/AdapterView$SelectionNotifier;->this$0:Lbbc/mobile/news/view/AdapterView;

    invoke-virtual {v0, p0}, Lbbc/mobile/news/view/AdapterView;->post(Ljava/lang/Runnable;)Z

    .line 850
    :cond_0
    :goto_0
    return-void

    .line 848
    :cond_1
    iget-object v0, p0, Lbbc/mobile/news/view/AdapterView$SelectionNotifier;->this$0:Lbbc/mobile/news/view/AdapterView;

    #calls: Lbbc/mobile/news/view/AdapterView;->fireOnSelected()V
    invoke-static {v0}, Lbbc/mobile/news/view/AdapterView;->access$2(Lbbc/mobile/news/view/AdapterView;)V

    goto :goto_0
.end method

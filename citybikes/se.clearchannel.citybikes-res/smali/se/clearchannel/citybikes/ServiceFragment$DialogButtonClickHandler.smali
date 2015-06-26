.class public Lse/clearchannel/citybikes/ServiceFragment$DialogButtonClickHandler;
.super Ljava/lang/Object;
.source "ServiceFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lse/clearchannel/citybikes/ServiceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DialogButtonClickHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lse/clearchannel/citybikes/ServiceFragment;


# direct methods
.method public constructor <init>(Lse/clearchannel/citybikes/ServiceFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 385
    iput-object p1, p0, Lse/clearchannel/citybikes/ServiceFragment$DialogButtonClickHandler;->this$0:Lse/clearchannel/citybikes/ServiceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "clicked"

    .prologue
    .line 388
    packed-switch p2, :pswitch_data_0

    .line 393
    :goto_0
    return-void

    .line 390
    :pswitch_0
    iget-object v0, p0, Lse/clearchannel/citybikes/ServiceFragment$DialogButtonClickHandler;->this$0:Lse/clearchannel/citybikes/ServiceFragment;

    invoke-virtual {v0}, Lse/clearchannel/citybikes/ServiceFragment;->updateSelectedItems()V

    goto :goto_0

    .line 388
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

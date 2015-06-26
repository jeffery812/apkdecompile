.class Lse/clearchannel/citybikes/ServiceFragment$5;
.super Ljava/lang/Object;
.source "ServiceFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lse/clearchannel/citybikes/ServiceFragment;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lse/clearchannel/citybikes/ServiceFragment;


# direct methods
.method constructor <init>(Lse/clearchannel/citybikes/ServiceFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Lse/clearchannel/citybikes/ServiceFragment$5;->this$0:Lse/clearchannel/citybikes/ServiceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 2
    .parameter "dialog"
    .parameter "which"
    .parameter "isChecked"

    .prologue
    .line 275
    if-eqz p3, :cond_1

    .line 278
    iget-object v0, p0, Lse/clearchannel/citybikes/ServiceFragment$5;->this$0:Lse/clearchannel/citybikes/ServiceFragment;

    #getter for: Lse/clearchannel/citybikes/ServiceFragment;->selectedItems:Ljava/util/List;
    invoke-static {v0}, Lse/clearchannel/citybikes/ServiceFragment;->access$500(Lse/clearchannel/citybikes/ServiceFragment;)Ljava/util/List;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    :cond_0
    :goto_0
    iget-object v0, p0, Lse/clearchannel/citybikes/ServiceFragment$5;->this$0:Lse/clearchannel/citybikes/ServiceFragment;

    invoke-virtual {v0}, Lse/clearchannel/citybikes/ServiceFragment;->updateSelectedItems()V

    .line 285
    return-void

    .line 279
    :cond_1
    iget-object v0, p0, Lse/clearchannel/citybikes/ServiceFragment$5;->this$0:Lse/clearchannel/citybikes/ServiceFragment;

    #getter for: Lse/clearchannel/citybikes/ServiceFragment;->selectedItems:Ljava/util/List;
    invoke-static {v0}, Lse/clearchannel/citybikes/ServiceFragment;->access$500(Lse/clearchannel/citybikes/ServiceFragment;)Ljava/util/List;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lse/clearchannel/citybikes/ServiceFragment$5;->this$0:Lse/clearchannel/citybikes/ServiceFragment;

    #getter for: Lse/clearchannel/citybikes/ServiceFragment;->selectedItems:Ljava/util/List;
    invoke-static {v0}, Lse/clearchannel/citybikes/ServiceFragment;->access$500(Lse/clearchannel/citybikes/ServiceFragment;)Ljava/util/List;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.class Lse/clearchannel/citybikes/CityBikesMapFragment$5;
.super Ljava/lang/Object;
.source "CityBikesMapFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lse/clearchannel/citybikes/CityBikesMapFragment;->createUpdateTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lse/clearchannel/citybikes/CityBikesMapFragment;


# direct methods
.method constructor <init>(Lse/clearchannel/citybikes/CityBikesMapFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 483
    iput-object p1, p0, Lse/clearchannel/citybikes/CityBikesMapFragment$5;->this$0:Lse/clearchannel/citybikes/CityBikesMapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialogInterface"

    .prologue
    .line 486
    iget-object v0, p0, Lse/clearchannel/citybikes/CityBikesMapFragment$5;->this$0:Lse/clearchannel/citybikes/CityBikesMapFragment;

    iget-object v0, v0, Lse/clearchannel/citybikes/CityBikesMapFragment;->updateTask:Lse/clearchannel/citybikes/CityBikesMapFragment$LocationsUpdaterTask;

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lse/clearchannel/citybikes/CityBikesMapFragment$5;->this$0:Lse/clearchannel/citybikes/CityBikesMapFragment;

    iget-object v0, v0, Lse/clearchannel/citybikes/CityBikesMapFragment;->updateTask:Lse/clearchannel/citybikes/CityBikesMapFragment$LocationsUpdaterTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lse/clearchannel/citybikes/CityBikesMapFragment$LocationsUpdaterTask;->cancel(Z)Z

    .line 490
    :cond_0
    return-void
.end method

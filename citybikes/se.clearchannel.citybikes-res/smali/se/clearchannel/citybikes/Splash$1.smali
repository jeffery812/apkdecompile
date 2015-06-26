.class Lse/clearchannel/citybikes/Splash$1;
.super Ljava/lang/Object;
.source "Splash.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lse/clearchannel/citybikes/Splash;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lse/clearchannel/citybikes/Splash;


# direct methods
.method constructor <init>(Lse/clearchannel/citybikes/Splash;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    iput-object p1, p0, Lse/clearchannel/citybikes/Splash$1;->this$0:Lse/clearchannel/citybikes/Splash;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 24
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lse/clearchannel/citybikes/Splash$1;->this$0:Lse/clearchannel/citybikes/Splash;

    const-class v2, Lse/clearchannel/citybikes/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    .local v0, mainIntent:Landroid/content/Intent;
    iget-object v1, p0, Lse/clearchannel/citybikes/Splash$1;->this$0:Lse/clearchannel/citybikes/Splash;

    invoke-virtual {v1, v0}, Lse/clearchannel/citybikes/Splash;->startActivity(Landroid/content/Intent;)V

    .line 26
    iget-object v1, p0, Lse/clearchannel/citybikes/Splash$1;->this$0:Lse/clearchannel/citybikes/Splash;

    invoke-virtual {v1}, Lse/clearchannel/citybikes/Splash;->finish()V

    .line 27
    return-void
.end method

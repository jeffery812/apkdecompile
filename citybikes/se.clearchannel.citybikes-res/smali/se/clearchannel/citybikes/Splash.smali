.class public Lse/clearchannel/citybikes/Splash;
.super Landroid/app/Activity;
.source "Splash.java"


# instance fields
.field private final SPLASH_DISPLAY_LENGHT:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 10
    const/16 v0, 0x2ee

    iput v0, p0, Lse/clearchannel/citybikes/Splash;->SPLASH_DISPLAY_LENGHT:I

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    const v0, 0x7f030023

    invoke-virtual {p0, v0}, Lse/clearchannel/citybikes/Splash;->setContentView(I)V

    .line 20
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lse/clearchannel/citybikes/Splash$1;

    invoke-direct {v1, p0}, Lse/clearchannel/citybikes/Splash$1;-><init>(Lse/clearchannel/citybikes/Splash;)V

    const-wide/16 v2, 0x2ee

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 29
    return-void
.end method

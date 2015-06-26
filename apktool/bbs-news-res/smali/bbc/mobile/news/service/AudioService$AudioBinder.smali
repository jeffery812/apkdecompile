.class public Lbbc/mobile/news/service/AudioService$AudioBinder;
.super Landroid/os/Binder;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbc/mobile/news/service/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AudioBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lbbc/mobile/news/service/AudioService;


# direct methods
.method public constructor <init>(Lbbc/mobile/news/service/AudioService;)V
    .locals 0
    .parameter

    .prologue
    .line 470
    iput-object p1, p0, Lbbc/mobile/news/service/AudioService$AudioBinder;->this$0:Lbbc/mobile/news/service/AudioService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getAudioControl()Lbbc/mobile/news/service/AudioControl;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lbbc/mobile/news/service/AudioService$AudioBinder;->this$0:Lbbc/mobile/news/service/AudioService;

    return-object v0
.end method

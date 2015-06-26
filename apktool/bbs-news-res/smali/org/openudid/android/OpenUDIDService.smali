.class public Lorg/openudid/android/OpenUDIDService;
.super Landroid/app/Service;
.source "OpenUDIDService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 25
    new-instance v0, Lorg/openudid/android/OpenUDIDService$1;

    invoke-direct {v0, p0}, Lorg/openudid/android/OpenUDIDService$1;-><init>(Lorg/openudid/android/OpenUDIDService;)V

    return-object v0
.end method

.class public Lbbc/mobile/news/ww/HelpActivity;
.super Lbbc/mobile/news/HelpActivity;
.source "HelpActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Lbbc/mobile/news/HelpActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getHelpUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    const v0, 0x7f0800dc

    invoke-virtual {p0, v0}, Lbbc/mobile/news/ww/HelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/adobe/adms/testandtarget/MissingDefaultContentException;
.super Ljava/lang/Exception;
.source "MissingDefaultContentException.java"


# static fields
.field private static final defaultMessage:Ljava/lang/String; = "Mbox.setDefaultContent() must be called before loading Mbox."

.field private static final serialVersionUID:J = -0xdf2685e5cc051b0L


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "Mbox.setDefaultContent() must be called before loading Mbox."

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 15
    return-void
.end method

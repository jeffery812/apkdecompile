.class public Lio/boxcar/push/model/BXCNotification;
.super Ljava/lang/Object;
.source "BXCNotification.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lio/boxcar/push/model/BXCNotification;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATE_READ:I = 0x1

.field public static final STATE_TRACKED:I = 0x4

.field public static final STATE_TRACKFAILED:I = 0x3

.field public static final STATE_TRACKING:I = 0x2

.field public static final STATE_UNREAD:I


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/util/Date;

.field private h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lio/boxcar/push/model/BXCNotification$1;

    invoke-direct {v0}, Lio/boxcar/push/model/BXCNotification$1;-><init>()V

    sput-object v0, Lio/boxcar/push/model/BXCNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v0, 0x1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/boxcar/push/model/BXCNotification;->d:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lio/boxcar/push/model/BXCNotification;->a:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/boxcar/push/model/BXCNotification;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/boxcar/push/model/BXCNotification;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_1

    :goto_0
    iput-boolean v0, p0, Lio/boxcar/push/model/BXCNotification;->e:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iput-object v0, p0, Lio/boxcar/push/model/BXCNotification;->f:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lio/boxcar/push/model/BXCNotification;->g:Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lio/boxcar/push/model/BXCNotification;->h:Ljava/util/HashMap;

    .line 75
    return-void

    .line 74
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Ljava/util/Date;Ljava/util/HashMap;)V
    .locals 0
    .parameter "id"
    .parameter "body"
    .parameter "richPush"
    .parameter "url"
    .parameter "badge"
    .parameter "sound"
    .parameter "timestamp"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p8, extras:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lio/boxcar/push/model/BXCNotification;->d:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lio/boxcar/push/model/BXCNotification;->c:Ljava/lang/String;

    .line 58
    iput-boolean p3, p0, Lio/boxcar/push/model/BXCNotification;->e:Z

    .line 59
    iput-object p4, p0, Lio/boxcar/push/model/BXCNotification;->f:Ljava/lang/String;

    .line 60
    iput p5, p0, Lio/boxcar/push/model/BXCNotification;->a:I

    .line 61
    iput-object p6, p0, Lio/boxcar/push/model/BXCNotification;->b:Ljava/lang/String;

    .line 62
    iput-object p7, p0, Lio/boxcar/push/model/BXCNotification;->g:Ljava/util/Date;

    .line 63
    if-eqz p8, :cond_0

    .end local p8           #extras:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    iput-object p8, p0, Lio/boxcar/push/model/BXCNotification;->h:Ljava/util/HashMap;

    .line 64
    return-void

    .line 63
    .restart local p8       #extras:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    new-instance p8, Ljava/util/HashMap;

    .end local p8           #extras:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p8}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "obj"

    .prologue
    .line 180
    instance-of v1, p1, Lio/boxcar/push/model/BXCNotification;

    if-nez v1, :cond_0

    .line 181
    const/4 v1, 0x0

    .line 184
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 183
    check-cast v0, Lio/boxcar/push/model/BXCNotification;

    .line 184
    .local v0, other:Lio/boxcar/push/model/BXCNotification;
    iget-object v1, p0, Lio/boxcar/push/model/BXCNotification;->d:Ljava/lang/String;

    iget-object v2, v0, Lio/boxcar/push/model/BXCNotification;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getBadge()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lio/boxcar/push/model/BXCNotification;->a:I

    return v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lio/boxcar/push/model/BXCNotification;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lio/boxcar/push/model/BXCNotification;->g:Ljava/util/Date;

    return-object v0
.end method

.method public getExtraParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    .line 152
    iget-object v0, p0, Lio/boxcar/push/model/BXCNotification;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getExtras()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lio/boxcar/push/model/BXCNotification;->h:Ljava/util/HashMap;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lio/boxcar/push/model/BXCNotification;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getSound()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lio/boxcar/push/model/BXCNotification;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lio/boxcar/push/model/BXCNotification;->f:Ljava/lang/String;

    return-object v0
.end method

.method public isRichPush()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lio/boxcar/push/model/BXCNotification;->e:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .local v0, buffer:Ljava/lang/StringBuilder;
    const-string v3, "id: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lio/boxcar/push/model/BXCNotification;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    const-string v3, "body: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lio/boxcar/push/model/BXCNotification;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    const-string v3, "badge: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lio/boxcar/push/model/BXCNotification;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    const-string v3, "sound: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lio/boxcar/push/model/BXCNotification;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    const-string v3, "richPush: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lio/boxcar/push/model/BXCNotification;->e:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    const-string v3, "url: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lio/boxcar/push/model/BXCNotification;->f:Ljava/lang/String;

    if-nez v3, :cond_0

    const-string v3, ""

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    iget-object v3, p0, Lio/boxcar/push/model/BXCNotification;->h:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 171
    .local v1, extra:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 168
    .end local v1           #extra:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_0
    iget-object v3, p0, Lio/boxcar/push/model/BXCNotification;->f:Ljava/lang/String;

    goto :goto_0

    .line 173
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_1
    const-string v3, "timestamp: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lio/boxcar/push/model/BXCNotification;->g:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 82
    iget-object v0, p0, Lio/boxcar/push/model/BXCNotification;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget v0, p0, Lio/boxcar/push/model/BXCNotification;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget-object v0, p0, Lio/boxcar/push/model/BXCNotification;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lio/boxcar/push/model/BXCNotification;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-boolean v0, p0, Lio/boxcar/push/model/BXCNotification;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget-object v0, p0, Lio/boxcar/push/model/BXCNotification;->f:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lio/boxcar/push/model/BXCNotification;->g:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 89
    iget-object v0, p0, Lio/boxcar/push/model/BXCNotification;->h:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 90
    return-void

    .line 86
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 87
    :cond_1
    iget-object v0, p0, Lio/boxcar/push/model/BXCNotification;->f:Ljava/lang/String;

    goto :goto_1
.end method

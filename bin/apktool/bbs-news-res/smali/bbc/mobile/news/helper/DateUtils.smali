.class public Lbbc/mobile/news/helper/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# static fields
.field private static final sLocalDateFormat:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/text/DateFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lbbc/mobile/news/helper/DateUtils$1;

    invoke-direct {v0}, Lbbc/mobile/news/helper/DateUtils$1;-><init>()V

    sput-object v0, Lbbc/mobile/news/helper/DateUtils;->sLocalDateFormat:Ljava/lang/ThreadLocal;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getHumanReadableUpdatedTime(Landroid/content/Context;Ljava/util/Calendar;Z)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "cal"
    .parameter "withTimeZone"

    .prologue
    const/16 v4, 0x20

    .line 107
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .local v8, sb:Ljava/lang/StringBuilder;
    if-eqz p1, :cond_2

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long v6, v0, v2

    .line 112
    .local v6, diff:J
    const-wide/32 v0, 0x2255100

    cmp-long v0, v6, v0

    if-gez v0, :cond_1

    .line 113
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 114
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    move-result-object v0

    .line 113
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 128
    .end local v6           #diff:J
    :cond_0
    :goto_0
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 117
    .restart local v6       #diff:J
    :cond_1
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Landroid/text/format/DateFormat;->getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    if-eqz p2, :cond_0

    .line 120
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {p1, v1}, Lbbc/mobile/news/helper/DateUtils;->getShortTimeZone(Ljava/util/Calendar;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 125
    .end local v6           #diff:J
    :cond_2
    const-string v0, "\u2026"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static final getShortHumanReadableUpdatedTime(Landroid/content/Context;Ljava/util/Calendar;Z)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "cal"
    .parameter "withTimeZone"

    .prologue
    const/16 v8, 0x20

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .local v2, sb:Ljava/lang/StringBuilder;
    sget v3, Lbbc/mobile/news/R$string;->updated_text:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    if-eqz p1, :cond_2

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 75
    .local v0, diff:J
    const-wide/32 v4, 0x5265c00

    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    .line 76
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    :cond_0
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    if-eqz p2, :cond_1

    .line 80
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {p1, v3}, Lbbc/mobile/news/helper/DateUtils;->getShortTimeZone(Ljava/util/Calendar;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .end local v0           #diff:J
    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 84
    :cond_2
    const-string v3, "\u2026"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static final getShortTimeZone(Ljava/util/Calendar;Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 2
    .parameter "cal"
    .parameter "tz"

    .prologue
    .line 144
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isoDateToCalendar(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 5
    .parameter "isoDate"

    .prologue
    .line 42
    if-eqz p0, :cond_0

    .line 43
    sget-object v2, Lbbc/mobile/news/helper/DateUtils;->sLocalDateFormat:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    .line 45
    .local v0, dateFormat:Ljava/text/DateFormat;
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 46
    invoke-virtual {v0}, Ljava/text/DateFormat;->getCalendar()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Calendar;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .end local v0           #dateFormat:Ljava/text/DateFormat;
    :goto_0
    return-object v2

    .line 48
    .restart local v0       #dateFormat:Ljava/text/DateFormat;
    :catch_0
    move-exception v1

    .line 49
    .local v1, e:Ljava/text/ParseException;
    const-string v2, "isoDateToCalendar"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "input: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .end local v0           #dateFormat:Ljava/text/DateFormat;
    .end local v1           #e:Ljava/text/ParseException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.class public Lcom/lenovo/scg/gallery3d/ingest/SimpleDate;
.super Ljava/lang/Object;
.source "SimpleDate.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/lenovo/scg/gallery3d/ingest/SimpleDate;",
        ">;"
    }
.end annotation


# static fields
.field private static sCalendarInstance:Ljava/util/Calendar;


# instance fields
.field public day:I

.field private mCachedStringRepresentation:Ljava/lang/String;

.field public month:I

.field private timestamp:J

.field public year:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/gallery3d/ingest/SimpleDate;->sCalendarInstance:Ljava/util/Calendar;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "timestamp"    # J

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/ingest/SimpleDate;->setTimestamp(J)V

    .line 42
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/lenovo/scg/gallery3d/ingest/SimpleDate;)I
    .locals 4
    .param p1, "other"    # Lcom/lenovo/scg/gallery3d/ingest/SimpleDate;

    .prologue
    .line 82
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ingest/SimpleDate;->year:I

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/ingest/SimpleDate;->getYear()I

    move-result v3

    sub-int v1, v2, v3

    .line 83
    .local v1, "yearDiff":I
    if-eqz v1, :cond_0

    .line 87
    .end local v1    # "yearDiff":I
    :goto_0
    return v1

    .line 85
    .restart local v1    # "yearDiff":I
    :cond_0
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ingest/SimpleDate;->month:I

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/ingest/SimpleDate;->getMonth()I

    move-result v3

    sub-int v0, v2, v3

    .line 86
    .local v0, "monthDiff":I
    if-eqz v0, :cond_1

    move v1, v0

    goto :goto_0

    .line 87
    :cond_1
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ingest/SimpleDate;->day:I

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/ingest/SimpleDate;->getDay()I

    move-result v3

    sub-int v1, v2, v3

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 25
    check-cast p1, Lcom/lenovo/scg/gallery3d/ingest/SimpleDate;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/ingest/SimpleDate;->compareTo(Lcom/lenovo/scg/gallery3d/ingest/SimpleDate;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 70
    if-ne p0, p1, :cond_1

    .line 77
    :cond_0
    :goto_0
    return v1

    .line 71
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    goto :goto_0

    .line 72
    :cond_2
    instance-of v3, p1, Lcom/lenovo/scg/gallery3d/ingest/SimpleDate;

    if-nez v3, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 73
    check-cast v0, Lcom/lenovo/scg/gallery3d/ingest/SimpleDate;

    .line 74
    .local v0, "other":Lcom/lenovo/scg/gallery3d/ingest/SimpleDate;
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ingest/SimpleDate;->year:I

    iget v4, v0, Lcom/lenovo/scg/gallery3d/ingest/SimpleDate;->year:I

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 75
    :cond_4
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ingest/SimpleDate;->month:I

    iget v4, v0, Lcom/lenovo/scg/gallery3d/ingest/SimpleDate;->month:I

    if-eq v3, v4, :cond_5

    move v1, v2

    goto :goto_0

    .line 76
    :cond_5
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ingest/SimpleDate;->day:I

    iget v4, v0, Lcom/lenovo/scg/gallery3d/ingest/SimpleDate;->day:I

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getDay()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ingest/SimpleDate;->day:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ingest/SimpleDate;->month:I

    return v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ingest/SimpleDate;->year:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 60
    const/16 v0, 0x1f

    .line 61
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 62
    .local v1, "result":I
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ingest/SimpleDate;->day:I

    add-int/lit8 v1, v2, 0x1f

    .line 63
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ingest/SimpleDate;->month:I

    add-int v1, v2, v3

    .line 64
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ingest/SimpleDate;->year:I

    add-int v1, v2, v3

    .line 65
    return v1
.end method

.method public setTimestamp(J)V
    .locals 3
    .param p1, "timestamp"    # J

    .prologue
    .line 47
    sget-object v1, Lcom/lenovo/scg/gallery3d/ingest/SimpleDate;->sCalendarInstance:Ljava/util/Calendar;

    monitor-enter v1

    .line 49
    :try_start_0
    sget-object v0, Lcom/lenovo/scg/gallery3d/ingest/SimpleDate;->sCalendarInstance:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 50
    sget-object v0, Lcom/lenovo/scg/gallery3d/ingest/SimpleDate;->sCalendarInstance:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ingest/SimpleDate;->day:I

    .line 51
    sget-object v0, Lcom/lenovo/scg/gallery3d/ingest/SimpleDate;->sCalendarInstance:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ingest/SimpleDate;->month:I

    .line 52
    sget-object v0, Lcom/lenovo/scg/gallery3d/ingest/SimpleDate;->sCalendarInstance:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ingest/SimpleDate;->year:I

    .line 53
    iput-wide p1, p0, Lcom/lenovo/scg/gallery3d/ingest/SimpleDate;->timestamp:J

    .line 54
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/SimpleDate;->mCachedStringRepresentation:Ljava/lang/String;

    .line 55
    monitor-exit v1

    .line 56
    return-void

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 105
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/SimpleDate;->mCachedStringRepresentation:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 106
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/ingest/SimpleDate;->timestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/SimpleDate;->mCachedStringRepresentation:Ljava/lang/String;

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/SimpleDate;->mCachedStringRepresentation:Ljava/lang/String;

    return-object v0
.end method

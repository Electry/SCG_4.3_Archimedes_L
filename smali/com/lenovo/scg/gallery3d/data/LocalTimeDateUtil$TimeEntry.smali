.class public Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;
.super Ljava/lang/Object;
.source "LocalTimeDateUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TimeEntry"
.end annotation


# instance fields
.field public endMillion:J

.field public imageCount:I

.field public startMillion:J

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil;

.field public timeId:I

.field public timeName:Ljava/lang/String;

.field public videoCount:I


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil;JJLjava/lang/String;)V
    .locals 2
    .param p2, "start"    # J
    .param p4, "end"    # J
    .param p6, "name"    # Ljava/lang/String;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;->this$0:Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    invoke-virtual {p6}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;->timeId:I

    .line 161
    iput-wide p2, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;->startMillion:J

    .line 162
    iput-wide p4, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;->endMillion:J

    .line 163
    iput-object p6, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;->timeName:Ljava/lang/String;

    .line 164
    return-void
.end method

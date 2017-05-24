.class public Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SpeedScrollListener;
.super Ljava/lang/Object;
.source "SpeedScrollListener.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private currTime:J

.field private previousEventTime:J

.field private previousFirstVisibleItem:I

.field private speed:D

.field private timeToScrollOneElement:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SpeedScrollListener;->previousFirstVisibleItem:I

    .line 15
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SpeedScrollListener;->previousEventTime:J

    .line 16
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SpeedScrollListener;->speed:D

    return-void
.end method


# virtual methods
.method public getSpeed()D
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SpeedScrollListener;->speed:D

    return-wide v0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 4
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 20
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SpeedScrollListener;->previousFirstVisibleItem:I

    if-eq v0, p2, :cond_0

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SpeedScrollListener;->currTime:J

    .line 22
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SpeedScrollListener;->currTime:J

    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SpeedScrollListener;->previousEventTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SpeedScrollListener;->timeToScrollOneElement:J

    .line 23
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SpeedScrollListener;->timeToScrollOneElement:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SpeedScrollListener;->speed:D

    .line 25
    iput p2, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SpeedScrollListener;->previousFirstVisibleItem:I

    .line 26
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SpeedScrollListener;->currTime:J

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SpeedScrollListener;->previousEventTime:J

    .line 29
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 33
    return-void
.end method

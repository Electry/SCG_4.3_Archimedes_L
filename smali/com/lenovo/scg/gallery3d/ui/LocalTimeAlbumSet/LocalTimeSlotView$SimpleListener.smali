.class public Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$SimpleListener;
.super Ljava/lang/Object;
.source "LocalTimeSlotView.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 96
    return-void
.end method

.method public onLongTap(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 108
    return-void
.end method

.method public onScrollPositionChanged(II)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "total"    # I

    .prologue
    .line 112
    return-void
.end method

.method public onSingleTapUp(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 104
    return-void
.end method

.method public onUp(Z)V
    .locals 0
    .param p1, "followedByLongPress"    # Z

    .prologue
    .line 100
    return-void
.end method

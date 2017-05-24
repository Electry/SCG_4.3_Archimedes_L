.class public Lcom/lenovo/scg/gallery3d/ui/SlotView$SimpleListener;
.super Ljava/lang/Object;
.source "SlotView.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/ui/SlotView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ui/SlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public lockOrientation()V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method public onDown(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 72
    return-void
.end method

.method public onLongTap(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 84
    return-void
.end method

.method public onScrollPositionChanged(II)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "total"    # I

    .prologue
    .line 88
    return-void
.end method

.method public onSingleTapUp(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 80
    return-void
.end method

.method public onUp(Z)V
    .locals 0
    .param p1, "followedByLongPress"    # Z

    .prologue
    .line 76
    return-void
.end method

.method public onUpdateBar(I)V
    .locals 0
    .param p1, "curCount"    # I

    .prologue
    .line 93
    return-void
.end method

.method public unlockOrientation()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

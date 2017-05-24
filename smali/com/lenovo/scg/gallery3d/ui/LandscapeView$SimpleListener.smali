.class public Lcom/lenovo/scg/gallery3d/ui/LandscapeView$SimpleListener;
.super Ljava/lang/Object;
.source "LandscapeView.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ui/LandscapeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 62
    return-void
.end method

.method public onLongTap(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 74
    return-void
.end method

.method public onScrollPositionChanged(II)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "total"    # I

    .prologue
    .line 78
    return-void
.end method

.method public onSingleTapUp(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 70
    return-void
.end method

.method public onSwitchSize(Z)V
    .locals 0
    .param p1, "isSwitch"    # Z

    .prologue
    .line 83
    return-void
.end method

.method public onUp(Z)V
    .locals 0
    .param p1, "followedByLongPress"    # Z

    .prologue
    .line 66
    return-void
.end method

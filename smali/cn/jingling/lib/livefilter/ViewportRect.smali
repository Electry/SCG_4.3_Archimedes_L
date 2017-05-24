.class public Lcn/jingling/lib/livefilter/ViewportRect;
.super Ljava/lang/Object;
.source "ViewportRect.java"


# instance fields
.field public height:I

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcn/jingling/lib/livefilter/ViewportRect;->x:I

    .line 12
    iput p2, p0, Lcn/jingling/lib/livefilter/ViewportRect;->y:I

    .line 13
    iput p3, p0, Lcn/jingling/lib/livefilter/ViewportRect;->width:I

    .line 14
    iput p4, p0, Lcn/jingling/lib/livefilter/ViewportRect;->height:I

    .line 15
    return-void
.end method

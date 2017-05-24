.class Lcn/jingling/lib/filters/onekey/BEEPSHorizontalVertical;
.super Ljava/lang/Object;
.source "BEEPS.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private data:[D

.field private height:I

.field private width:I


# direct methods
.method protected constructor <init>([DII)V
    .locals 0
    .param p1, "data"    # [D
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lcn/jingling/lib/filters/onekey/BEEPSHorizontalVertical;->data:[D

    .line 114
    iput p2, p0, Lcn/jingling/lib/filters/onekey/BEEPSHorizontalVertical;->width:I

    .line 115
    iput p3, p0, Lcn/jingling/lib/filters/onekey/BEEPSHorizontalVertical;->height:I

    .line 116
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lcn/jingling/lib/filters/onekey/BEEPSHorizontalVertical;->data:[D

    iget v1, p0, Lcn/jingling/lib/filters/onekey/BEEPSHorizontalVertical;->width:I

    iget v2, p0, Lcn/jingling/lib/filters/onekey/BEEPSHorizontalVertical;->height:I

    invoke-static {v0, v1, v2}, Lcn/jingling/lib/filters/SmoothSkinProcessor;->BEEPSHorizontalVertical([DII)V

    .line 121
    return-void
.end method

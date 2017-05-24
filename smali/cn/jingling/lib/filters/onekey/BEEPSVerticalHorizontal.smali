.class Lcn/jingling/lib/filters/onekey/BEEPSVerticalHorizontal;
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
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Lcn/jingling/lib/filters/onekey/BEEPSVerticalHorizontal;->data:[D

    .line 133
    iput p2, p0, Lcn/jingling/lib/filters/onekey/BEEPSVerticalHorizontal;->width:I

    .line 134
    iput p3, p0, Lcn/jingling/lib/filters/onekey/BEEPSVerticalHorizontal;->height:I

    .line 135
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 139
    iget-object v0, p0, Lcn/jingling/lib/filters/onekey/BEEPSVerticalHorizontal;->data:[D

    iget v1, p0, Lcn/jingling/lib/filters/onekey/BEEPSVerticalHorizontal;->width:I

    iget v2, p0, Lcn/jingling/lib/filters/onekey/BEEPSVerticalHorizontal;->height:I

    invoke-static {v0, v1, v2}, Lcn/jingling/lib/filters/SmoothSkinProcessor;->BEEPSVerticalHorizontal([DII)V

    .line 140
    return-void
.end method

.class public Lcn/jingling/lib/filters/realsize/RSFlipHorizontal;
.super Lcn/jingling/lib/filters/realsize/RSLineFilter;
.source "RSFlipHorizontal.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcn/jingling/lib/filters/realsize/RSLineFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[I)Z
    .locals 1
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "inPath"    # Ljava/lang/String;
    .param p3, "outPath"    # Ljava/lang/String;
    .param p4, "args"    # [I

    .prologue
    .line 13
    invoke-super {p0, p1, p2, p3, p4}, Lcn/jingling/lib/filters/realsize/RSLineFilter;->apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[I)Z

    move-result v0

    return v0
.end method

.method public applyLine(Landroid/content/Context;[III)V
    .locals 0
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "pixels"    # [I
    .param p3, "line"    # I
    .param p4, "height"    # I

    .prologue
    .line 19
    invoke-static {p1, p2, p3, p4}, Lcn/jingling/lib/filters/realsize/FlipUtil;->flipLine(Landroid/content/Context;[III)V

    .line 20
    return-void
.end method

.method protected releaseLayers()V
    .locals 0

    .prologue
    .line 26
    return-void
.end method

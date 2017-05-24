.class public Lcn/jingling/lib/filters/onekey/SingleColorGreen;
.super Lcn/jingling/lib/filters/onekey/SingleColor;
.source "SingleColorGreen.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcn/jingling/lib/filters/onekey/SingleColor;-><init>()V

    .line 9
    return-void
.end method


# virtual methods
.method public singleColorEffect([III[F)V
    .locals 9
    .param p1, "pixels"    # [I
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "matrix"    # [F

    .prologue
    const/4 v4, 0x0

    .line 13
    invoke-virtual {p0}, Lcn/jingling/lib/filters/onekey/SingleColorGreen;->statisticEvent()V

    .line 14
    const/high16 v5, 0x3f800000    # 1.0f

    const v7, 0x3ee66666    # 0.45f

    const v8, 0x3f0ccccd    # 0.55f

    move-object v0, p1

    move v1, p2

    move v2, p3

    move-object v3, p4

    move v6, v4

    invoke-static/range {v0 .. v8}, Lcn/jingling/lib/filters/CMTProcessor;->singleColorEffect([III[FFFFFF)V

    .line 15
    return-void
.end method

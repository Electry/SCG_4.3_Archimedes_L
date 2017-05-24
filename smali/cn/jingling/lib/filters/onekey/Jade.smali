.class public Lcn/jingling/lib/filters/onekey/Jade;
.super Lcn/jingling/lib/filters/onekey/CurveFilter;
.source "Jade.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Lcn/jingling/lib/filters/onekey/CurveFilter;-><init>()V

    .line 6
    const-string v0, "curves/jade.dat"

    iput-object v0, p0, Lcn/jingling/lib/filters/onekey/Jade;->mPath:Ljava/lang/String;

    .line 7
    return-void
.end method

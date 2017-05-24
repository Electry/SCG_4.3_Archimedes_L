.class public abstract Lcn/jingling/lib/textbubble/Effect;
.super Ljava/lang/Object;
.source "Effect.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack()Z
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    return v0
.end method

.method public abstract onCancel()Z
.end method

.method public abstract onOk()Z
.end method

.method public abstract perform()V
.end method

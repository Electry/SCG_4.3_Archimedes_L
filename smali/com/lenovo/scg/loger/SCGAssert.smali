.class public Lcom/lenovo/scg/loger/SCGAssert;
.super Ljava/lang/Object;
.source "SCGAssert.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ThrowExceptionIfFalse(ZLjava/lang/String;)V
    .locals 1
    .param p0, "actual"    # Z
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 45
    sget-boolean v0, Lcom/lenovo/scg/loger/SCGLog;->DEBUGING:Z

    if-eqz v0, :cond_1

    .line 46
    if-nez p0, :cond_0

    .line 47
    const-string v0, "ASSERT FATAL EXCEPTION"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0, p0}, Ljunit/framework/Assert;->assertEquals(ZZ)V

    .line 51
    :cond_1
    return-void
.end method

.method public static ThrowExceptionIfTure(ZLjava/lang/String;)V
    .locals 1
    .param p0, "actual"    # Z
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 26
    sget-boolean v0, Lcom/lenovo/scg/loger/SCGLog;->DEBUGING:Z

    if-eqz v0, :cond_1

    .line 27
    if-eqz p0, :cond_0

    .line 28
    const-string v0, "ASSERT FATAL EXCEPTION"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljunit/framework/Assert;->assertEquals(ZZ)V

    .line 32
    :cond_1
    return-void
.end method

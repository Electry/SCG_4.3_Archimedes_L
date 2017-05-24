.class public abstract Lcom/lenovo/scg/LeJniHelper/ICreateDestroyInNative;
.super Ljava/lang/Object;
.source "ICreateDestroyInNative.java"


# instance fields
.field protected m_handleC:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/scg/LeJniHelper/ICreateDestroyInNative;->m_handleC:J

    .line 9
    return-void
.end method


# virtual methods
.method protected abstract ConstructC()J
.end method

.method protected abstract DestructC(J)V
.end method

.method public Finish()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 52
    iget-wide v0, p0, Lcom/lenovo/scg/LeJniHelper/ICreateDestroyInNative;->m_handleC:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 54
    iget-wide v0, p0, Lcom/lenovo/scg/LeJniHelper/ICreateDestroyInNative;->m_handleC:J

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/LeJniHelper/ICreateDestroyInNative;->DestructC(J)V

    .line 55
    iput-wide v2, p0, Lcom/lenovo/scg/LeJniHelper/ICreateDestroyInNative;->m_handleC:J

    .line 57
    :cond_0
    return-void
.end method

.method public Init()Z
    .locals 4

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/lenovo/scg/LeJniHelper/ICreateDestroyInNative;->ConstructC()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/scg/LeJniHelper/ICreateDestroyInNative;->m_handleC:J

    .line 42
    iget-wide v0, p0, Lcom/lenovo/scg/LeJniHelper/ICreateDestroyInNative;->m_handleC:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

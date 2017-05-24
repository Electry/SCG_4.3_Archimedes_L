.class public Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/Statuses_Count;
.super Ljava/lang/Object;
.source "Statuses_Count.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x7a1d39ff04f5e3b6L


# instance fields
.field private attitudes:I

.field private comments:I

.field private id:J

.field private reposts:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttitudes()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/Statuses_Count;->attitudes:I

    return v0
.end method

.method public getComments()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/Statuses_Count;->comments:I

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/Statuses_Count;->id:J

    return-wide v0
.end method

.method public getReposts()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/Statuses_Count;->reposts:I

    return v0
.end method

.method public setAttitudes(I)V
    .locals 0
    .param p1, "attitudes"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/Statuses_Count;->attitudes:I

    .line 47
    return-void
.end method

.method public setComments(I)V
    .locals 0
    .param p1, "comments"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/Statuses_Count;->comments:I

    .line 39
    return-void
.end method

.method public setId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 22
    iput-wide p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/Statuses_Count;->id:J

    .line 23
    return-void
.end method

.method public setReposts(I)V
    .locals 0
    .param p1, "reposts"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/Statuses_Count;->reposts:I

    .line 31
    return-void
.end method

.class public Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/VisibleInfo;
.super Ljava/lang/Object;
.source "VisibleInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private list_id:J

.field private list_idstr:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getList_id()J
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/VisibleInfo;->list_id:J

    return-wide v0
.end method

.method public getList_idstr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/VisibleInfo;->list_idstr:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/VisibleInfo;->type:I

    return v0
.end method

.method public setList_id(J)V
    .locals 1
    .param p1, "list_id"    # J

    .prologue
    .line 35
    iput-wide p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/VisibleInfo;->list_id:J

    .line 36
    return-void
.end method

.method public setList_idstr(Ljava/lang/String;)V
    .locals 0
    .param p1, "list_idstr"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/VisibleInfo;->list_idstr:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/VisibleInfo;->type:I

    .line 28
    return-void
.end method

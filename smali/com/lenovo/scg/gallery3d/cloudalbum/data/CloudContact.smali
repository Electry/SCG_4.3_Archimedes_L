.class public Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudContact;
.super Ljava/lang/Object;
.source "CloudContact.java"


# instance fields
.field private mContactHead:Ljava/lang/String;

.field private mContactId:Ljava/lang/String;

.field private mContactName:Ljava/lang/String;

.field private mContactNumber:Ljava/lang/String;

.field private mPersonId:J

.field private mPhoneIdColumn:J

.field private mPhoneLableColumn:Ljava/lang/String;

.field private mPhotoId:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudContact;->mContactId:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudContact;->mContactName:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudContact;->mContactHead:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudContact;->mContactNumber:Ljava/lang/String;

    .line 22
    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudContact;->mPhoneIdColumn:J

    .line 24
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudContact;->mPhoneLableColumn:Ljava/lang/String;

    .line 26
    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudContact;->mPhotoId:J

    .line 28
    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudContact;->mPersonId:J

    return-void
.end method


# virtual methods
.method public getmContactHead()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudContact;->mContactHead:Ljava/lang/String;

    return-object v0
.end method

.method public getmContactId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudContact;->mContactId:Ljava/lang/String;

    return-object v0
.end method

.method public getmContactName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudContact;->mContactName:Ljava/lang/String;

    return-object v0
.end method

.method public getmContactNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudContact;->mContactNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getmPersonId()J
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudContact;->mPersonId:J

    return-wide v0
.end method

.method public getmPhoneIdColumn()J
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudContact;->mPhoneIdColumn:J

    return-wide v0
.end method

.method public getmPhoneLableColumn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudContact;->mPhoneLableColumn:Ljava/lang/String;

    return-object v0
.end method

.method public getmPhotoId()J
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudContact;->mPhotoId:J

    return-wide v0
.end method

.method public setmContactHead(Ljava/lang/String;)V
    .locals 0
    .param p1, "mContactHead"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudContact;->mContactHead:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setmContactId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mContactId"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudContact;->mContactId:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setmContactName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mContactName"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudContact;->mContactName:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setmContactNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "mContactNumber"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudContact;->mContactNumber:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setmPersonId(J)V
    .locals 1
    .param p1, "mPersonId"    # J

    .prologue
    .line 91
    iput-wide p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudContact;->mPersonId:J

    .line 92
    return-void
.end method

.method public setmPhoneIdColumn(J)V
    .locals 1
    .param p1, "mPhoneIdColumn"    # J

    .prologue
    .line 67
    iput-wide p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudContact;->mPhoneIdColumn:J

    .line 68
    return-void
.end method

.method public setmPhoneLableColumn(Ljava/lang/String;)V
    .locals 0
    .param p1, "mPhoneLableColumn"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudContact;->mPhoneLableColumn:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setmPhotoId(J)V
    .locals 1
    .param p1, "mPhotoId"    # J

    .prologue
    .line 83
    iput-wide p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudContact;->mPhotoId:J

    .line 84
    return-void
.end method

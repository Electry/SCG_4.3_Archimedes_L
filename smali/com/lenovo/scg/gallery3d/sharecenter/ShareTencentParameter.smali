.class public Lcom/lenovo/scg/gallery3d/sharecenter/ShareTencentParameter;
.super Ljava/lang/Object;
.source "ShareTencentParameter.java"


# instance fields
.field content:Ljava/lang/String;

.field lat:Ljava/lang/String;

.field lon:Ljava/lang/String;

.field path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "lon"    # Ljava/lang/String;
    .param p4, "lat"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareTencentParameter;->content:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareTencentParameter;->path:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareTencentParameter;->lon:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareTencentParameter;->lat:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareTencentParameter;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getLat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareTencentParameter;->lat:Ljava/lang/String;

    return-object v0
.end method

.method public getLon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareTencentParameter;->lon:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareTencentParameter;->path:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareTencentParameter;->content:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setLat(Ljava/lang/String;)V
    .locals 0
    .param p1, "lat"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareTencentParameter;->lat:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setLon(Ljava/lang/String;)V
    .locals 0
    .param p1, "lon"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareTencentParameter;->lon:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareTencentParameter;->path:Ljava/lang/String;

    .line 42
    return-void
.end method

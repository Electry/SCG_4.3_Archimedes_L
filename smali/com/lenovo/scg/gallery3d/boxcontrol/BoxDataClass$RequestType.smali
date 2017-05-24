.class public final enum Lcom/lenovo/scg/gallery3d/boxcontrol/BoxDataClass$RequestType;
.super Ljava/lang/Enum;
.source "BoxDataClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/boxcontrol/BoxDataClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/scg/gallery3d/boxcontrol/BoxDataClass$RequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/scg/gallery3d/boxcontrol/BoxDataClass$RequestType;

.field public static final enum MultiPics:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxDataClass$RequestType;

.field public static final enum SinglePic:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxDataClass$RequestType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxDataClass$RequestType;

    const-string v1, "SinglePic"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxDataClass$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxDataClass$RequestType;->SinglePic:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxDataClass$RequestType;

    new-instance v0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxDataClass$RequestType;

    const-string v1, "MultiPics"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxDataClass$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxDataClass$RequestType;->MultiPics:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxDataClass$RequestType;

    .line 12
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/lenovo/scg/gallery3d/boxcontrol/BoxDataClass$RequestType;

    sget-object v1, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxDataClass$RequestType;->SinglePic:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxDataClass$RequestType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxDataClass$RequestType;->MultiPics:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxDataClass$RequestType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxDataClass$RequestType;->$VALUES:[Lcom/lenovo/scg/gallery3d/boxcontrol/BoxDataClass$RequestType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/boxcontrol/BoxDataClass$RequestType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxDataClass$RequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxDataClass$RequestType;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/scg/gallery3d/boxcontrol/BoxDataClass$RequestType;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxDataClass$RequestType;->$VALUES:[Lcom/lenovo/scg/gallery3d/boxcontrol/BoxDataClass$RequestType;

    invoke-virtual {v0}, [Lcom/lenovo/scg/gallery3d/boxcontrol/BoxDataClass$RequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/scg/gallery3d/boxcontrol/BoxDataClass$RequestType;

    return-object v0
.end method

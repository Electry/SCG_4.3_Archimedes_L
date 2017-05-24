.class public final enum Lcom/lenovo/scg/LeImageJI/LeReadJpegMode$ReadMode;
.super Ljava/lang/Enum;
.source "LeReadJpegMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/LeImageJI/LeReadJpegMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReadMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/scg/LeImageJI/LeReadJpegMode$ReadMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/scg/LeImageJI/LeReadJpegMode$ReadMode;

.field public static final enum READ_ALL:Lcom/lenovo/scg/LeImageJI/LeReadJpegMode$ReadMode;

.field public static final enum READ_ANY:Lcom/lenovo/scg/LeImageJI/LeReadJpegMode$ReadMode;

.field public static final enum READ_IMAGE:Lcom/lenovo/scg/LeImageJI/LeReadJpegMode$ReadMode;

.field public static final enum READ_METADATA:Lcom/lenovo/scg/LeImageJI/LeReadJpegMode$ReadMode;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 7
    new-instance v0, Lcom/lenovo/scg/LeImageJI/LeReadJpegMode$ReadMode;

    const-string v1, "READ_METADATA"

    invoke-direct {v0, v1, v6, v3}, Lcom/lenovo/scg/LeImageJI/LeReadJpegMode$ReadMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lenovo/scg/LeImageJI/LeReadJpegMode$ReadMode;->READ_METADATA:Lcom/lenovo/scg/LeImageJI/LeReadJpegMode$ReadMode;

    new-instance v0, Lcom/lenovo/scg/LeImageJI/LeReadJpegMode$ReadMode;

    const-string v1, "READ_IMAGE"

    invoke-direct {v0, v1, v3, v4}, Lcom/lenovo/scg/LeImageJI/LeReadJpegMode$ReadMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lenovo/scg/LeImageJI/LeReadJpegMode$ReadMode;->READ_IMAGE:Lcom/lenovo/scg/LeImageJI/LeReadJpegMode$ReadMode;

    new-instance v0, Lcom/lenovo/scg/LeImageJI/LeReadJpegMode$ReadMode;

    const-string v1, "READ_ALL"

    invoke-direct {v0, v1, v4, v5}, Lcom/lenovo/scg/LeImageJI/LeReadJpegMode$ReadMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lenovo/scg/LeImageJI/LeReadJpegMode$ReadMode;->READ_ALL:Lcom/lenovo/scg/LeImageJI/LeReadJpegMode$ReadMode;

    new-instance v0, Lcom/lenovo/scg/LeImageJI/LeReadJpegMode$ReadMode;

    const-string v1, "READ_ANY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v5, v2}, Lcom/lenovo/scg/LeImageJI/LeReadJpegMode$ReadMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lenovo/scg/LeImageJI/LeReadJpegMode$ReadMode;->READ_ANY:Lcom/lenovo/scg/LeImageJI/LeReadJpegMode$ReadMode;

    .line 6
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/lenovo/scg/LeImageJI/LeReadJpegMode$ReadMode;

    sget-object v1, Lcom/lenovo/scg/LeImageJI/LeReadJpegMode$ReadMode;->READ_METADATA:Lcom/lenovo/scg/LeImageJI/LeReadJpegMode$ReadMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lenovo/scg/LeImageJI/LeReadJpegMode$ReadMode;->READ_IMAGE:Lcom/lenovo/scg/LeImageJI/LeReadJpegMode$ReadMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lenovo/scg/LeImageJI/LeReadJpegMode$ReadMode;->READ_ALL:Lcom/lenovo/scg/LeImageJI/LeReadJpegMode$ReadMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lenovo/scg/LeImageJI/LeReadJpegMode$ReadMode;->READ_ANY:Lcom/lenovo/scg/LeImageJI/LeReadJpegMode$ReadMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/lenovo/scg/LeImageJI/LeReadJpegMode$ReadMode;->$VALUES:[Lcom/lenovo/scg/LeImageJI/LeReadJpegMode$ReadMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput p3, p0, Lcom/lenovo/scg/LeImageJI/LeReadJpegMode$ReadMode;->mValue:I

    .line 12
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/scg/LeImageJI/LeReadJpegMode$ReadMode;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/lenovo/scg/LeImageJI/LeReadJpegMode$ReadMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/LeImageJI/LeReadJpegMode$ReadMode;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/scg/LeImageJI/LeReadJpegMode$ReadMode;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/lenovo/scg/LeImageJI/LeReadJpegMode$ReadMode;->$VALUES:[Lcom/lenovo/scg/LeImageJI/LeReadJpegMode$ReadMode;

    invoke-virtual {v0}, [Lcom/lenovo/scg/LeImageJI/LeReadJpegMode$ReadMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/scg/LeImageJI/LeReadJpegMode$ReadMode;

    return-object v0
.end method


# virtual methods
.method public GetValue()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/lenovo/scg/LeImageJI/LeReadJpegMode$ReadMode;->mValue:I

    return v0
.end method

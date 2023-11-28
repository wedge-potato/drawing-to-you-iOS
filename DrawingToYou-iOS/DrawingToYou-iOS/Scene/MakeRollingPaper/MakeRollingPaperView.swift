//
//  MakeRollingPaperView.swift
//  DrawingToYou-iOS
//
//  Created by 김혜수 on 11/28/23.
//

import SwiftUI

struct MakeRollingPaperView: View {
    
    @State private var nickname: String = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 40) {
            VStack(alignment: .leading, spacing: 20) {
                titleLabel
                inputField
                wantDrawingField
            }
            
            VStack(alignment: .leading) {
                backgroundTitleLabel
                backgroundImageViews
            }
            
            VStack(spacing: 16) {
                warningLabel
                completeButton
            }
        }
        .padding(.leading, 20)
        .padding(.trailing, 20)
    }
    
    var titleLabel: some View {
        Text("롤링페이퍼를 꾸며보세요.")
            .font(.style(.heading1))
    }
    
    var inputField: some View {
        ZStack(alignment: .bottom) {
            VStack(alignment: .leading) {
                Text("닉네임")
                    .font(.style(.caption1))
                    .foregroundStyle(.onSurfaceDefault)
                TextField(
                    "nickname",
                    text: $nickname,
                    prompt: Text("8자 이하로 입력해 주세요")
                        .font(.style(.body1))
                )
            }
            .padding(.init(top: 10, leading: 16, bottom: 4, trailing: 16))
            .border(.divider)
            Rectangle()
                .background(Color.black)
                .frame(height: 1)
        }
    }
    
    var wantDrawingField: some View {
        ZStack(alignment: .bottom) {
            VStack(alignment: .leading) {
                Text("받고 싶은 그림")
                    .font(.style(.caption1))
                    .foregroundStyle(.onSurfaceDefault)
                TextField(
                    "nickname",
                    text: $nickname,
                    prompt: Text("ex.크리스마스 그림 그려줘 (20자 이하)")
                        .font(.style(.body1))
                )
            }
            .padding(.init(top: 10, leading: 16, bottom: 4, trailing: 16))
            .cornerRadius(10)
            .border(.divider)
            Rectangle()
                .background(Color.black)
                .frame(height: 1)
        }
    }
    
    var backgroundTitleLabel: some View {
        Text("배경을 선택해 주세요")
            .font(.style(.heading2))
    }
    
    var backgroundImageViews: some View {
        HStack {
            ForEach(0..<3) { index in
                Image(.background2)
            }
        }
    }
    
    var warningLabel: some View {
        HStack {
            Image(.speaker)
            Text("롤링페이퍼는 수정할 수 없어요!")
                .font(.style(.caption1))
        }
    }
    
    var completeButton: some View {
        Button(action: {}, label: {
            Text("완료")
                .foregroundStyle(.white)
                .font(.style(.body1))
                .frame(maxWidth: .infinity)
                .frame(maxHeight: .infinity)
        })
        .background(Color.secondary900)
        .clipShape(.rect(cornerRadius: 100))
        .frame(height: 48)
        
    }
}

#Preview {
    MakeRollingPaperView()
}

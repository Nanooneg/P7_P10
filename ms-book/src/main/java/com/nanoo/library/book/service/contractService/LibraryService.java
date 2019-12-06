package com.nanoo.library.book.service.contractService;

import com.nanoo.library.book.model.dto.BookDto;
import com.nanoo.library.book.model.dto.LibraryWithoutBooksDto;
import com.nanoo.library.book.model.entities.Library;

import java.util.List;

/**
 * @author nanoo
 * @create 23/11/2019 - 01:05
 */
public interface LibraryService {
    
    List<LibraryWithoutBooksDto> getLibraryList();
    
    List<BookDto> getBookList(int library);
    
    Library findById(int libraryId);
}
